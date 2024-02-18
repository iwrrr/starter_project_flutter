import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:starter_project/data/model/product_response.dart';
import 'package:starter_project/data/repository/repository.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final Repository _repository;

  MainBloc({required Repository repository})
      : _repository = repository,
        super(MainInitial()) {
    on<GetProductList>(
      _getProductList,
      transformer: (events, mapper) => events.switchMap(mapper),
    );
  }

  Future<void> _getProductList(
    GetProductList event,
    Emitter<MainState> emit,
  ) async {
    emit(ProductLoading());

    final result = await _repository.getProductList();

    result.fold(
      (failure) => emit(ProductError(message: failure.message)),
      (data) => emit(ProductSuccess(data: data)),
    );
  }
}
