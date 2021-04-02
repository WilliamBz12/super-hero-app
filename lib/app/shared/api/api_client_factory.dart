import 'package:dio/dio.dart';

class ApiClientFactory {
  static Dio create() {
    final dio = Dio();
    dio.options.baseUrl = "https://superheroapi.com/api/1920180304795966";

    return dio;
  }
}
