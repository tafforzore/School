import 'package:dio/dio.dart';
import 'jwt_interceptor.dart';

class DioClient {
  Dio dio;

  DioClient() : dio = Dio(
      BaseOptions(
        baseUrl: "http://192.168.8.100:8000",
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60)
      )
  ) {
    dio.options.headers.addAll({
      'Content-Type': 'application/json',
      'Accept-Language':'fr'
    });
    dio.interceptors.add(JwtInterceptor());

  }
}
