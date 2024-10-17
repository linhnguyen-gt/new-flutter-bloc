abstract class IErrorHandler {
  Future<void> handleError(Object error, StackTrace stackTrace);
}
