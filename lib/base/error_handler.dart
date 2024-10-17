import 'dart:developer' as developer;

import 'interfaces/i_error_handler.dart';

class ErrorHandler implements IErrorHandler {
  @override
  Future<void> handleError(Object error, StackTrace stackTrace) async {
    developer.log('Error occurred: $error',
        name: 'Error', error: error, stackTrace: stackTrace);
  }
}
