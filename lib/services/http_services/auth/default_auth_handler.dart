import 'dart:developer' as developer;

import 'package:dio/dio.dart';

import '../interfaces/i_auth_handler.dart';

class DefaultAuthHandler implements IAuthHandler {
  String? _token;
  final Future<String?> Function()? _refreshTokenCallback;

  DefaultAuthHandler({Future<String?> Function()? refreshTokenCallback})
      : _refreshTokenCallback = refreshTokenCallback;

  @override
  void setToken(String token) {
    _token = token;
  }

  @override
  void clearToken() {
    _token = null;
  }

  @override
  void onRequest(RequestOptions options) {
    if (_token != null && _token!.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $_token';
    }
  }

  @override
  Future<bool> handleAuthError(DioException error) async {
    final errorResponse = error.response;
    if (errorResponse != null) {
      developer.log('${errorResponse.data}', name: 'Auth Error:');

      if (errorResponse.statusCode == 401 ||
          errorResponse.data != null &&
              errorResponse.data['message'] == 'Unauthorized') {
        if (_refreshTokenCallback != null) {
          try {
            final newToken = await _refreshTokenCallback();
            if (newToken != null) {
              setToken(newToken);
              return true;
            }
          } catch (e) {
            developer.log('Token refresh failed: $e', name: 'Auth Error:');
          }
        }
      }
    }
    return false;
  }
}
