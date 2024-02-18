part of 'main_bloc.dart';

@immutable
sealed class MainState {}

final class MainInitial extends MainState {}

final class ProductLoading extends MainState {}

final class ProductSuccess extends MainState {
  final List<ProductResponse> data;

  ProductSuccess({required this.data});
}

final class ProductError extends MainState {
  final String message;

  ProductError({required this.message});
}
