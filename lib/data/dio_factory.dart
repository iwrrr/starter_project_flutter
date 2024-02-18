import 'package:dio/dio.dart';

class DioFactory {
  final String baseUrl;

  DioFactory({
    required this.baseUrl,
  });

  BaseOptions _createBaseOptions() => BaseOptions(
        baseUrl: baseUrl,
        receiveTimeout: const Duration(minutes: 2),
        sendTimeout: const Duration(minutes: 1),
        connectTimeout: const Duration(minutes: 2),
      );

  Dio create() => Dio(_createBaseOptions());
}
