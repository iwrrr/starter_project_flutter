import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:starter_project/data/model/product_response.dart';
import 'package:starter_project/data/service/api_service.dart';

import '../failure.dart';

abstract class Repository {
  Future<Either<Failure, List<ProductResponse>>> getProductList();
}

class RepositoryImpl implements Repository {
  final ApiService _apiService;

  RepositoryImpl({required ApiService apiService}) : _apiService = apiService;

  @override
  Future<Either<Failure, List<ProductResponse>>> getProductList() async {}
}
