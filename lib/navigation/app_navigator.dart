import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppNavigator {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  const AppNavigator();

  Future<T?> push<T extends Object?>(String location, {T? extra}) =>
      GoRouter.of(navigatorKey.currentContext!).push<T>(location, extra: extra);

  Future<T?> pushNamed<T extends Object?>(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    T? extra,
  }) =>
      GoRouter.of(navigatorKey.currentContext!).pushNamed<T>(
        name,
        pathParameters: pathParameters,
        queryParameters: queryParameters,
        extra: extra,
      );

  /// Pop the top page off the Navigator's page stack by calling
  /// [Navigator.pop].
  void pop<T extends Object?>([T? result]) =>
      GoRouter.of(navigatorKey.currentContext!).pop(result);
}
