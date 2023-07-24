import 'package:flutter/material.dart';

import '../services/navigation_service.dart';
import 'base_response.dart';

class HttpStatusCodes {
  static const httpStatusBadRequest = 400;
  static const httpStatusUnauthorized = 401;
  static const httpStatusForbidden = 403;
  static const httpStatusNotFound = 404;
  static const httpStatusInternalServerError = 500;
}

Future<BaseResponse<Data>>? apiProblem<Data>(
    BaseResponse<Map<String, dynamic>> response) {
  var context = NavigationService.navigatorKey.currentContext!;

  final message = response.data;

  switch (response.statusCode) {
    case HttpStatusCodes.httpStatusBadRequest:
    case HttpStatusCodes.httpStatusUnauthorized:
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text(''),
            content: Text(message as String),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
      return null;
    case HttpStatusCodes.httpStatusForbidden:
    case HttpStatusCodes.httpStatusNotFound:
    case HttpStatusCodes.httpStatusInternalServerError:
      return null;
    default:
      return null;
  }
}

class Data {}
