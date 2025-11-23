import 'package:dio/dio.dart';

class DioClient {
  DioClient._internal() {
    dio =
        Dio(
            BaseOptions(
              connectTimeout: const Duration(seconds: 5),
              receiveTimeout: const Duration(seconds: 5),
              sendTimeout: const Duration(seconds: 5),
            ),
          )
          ..interceptors.add(
            LogInterceptor(requestBody: true, responseBody: true),
          );
  }

  static final DioClient _instance = DioClient._internal();

  late final Dio dio;

  factory DioClient() => _instance;
}
