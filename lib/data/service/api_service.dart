import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:starter_project/data/model/product_response.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET("/ab63567f-8d86-4443-aaa8-50a6cede1cae")
  Future<HttpResponse<List<ProductResponse>>> getProducts();
}
