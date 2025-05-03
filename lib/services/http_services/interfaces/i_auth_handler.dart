import 'package:dio/dio.dart';

abstract class IAuthHandler {
  void onRequest(RequestOptions options);

  Future<bool> handleAuthError(DioException error);

  void setToken(String token);

  void clearToken();
}
