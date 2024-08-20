import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'app_router.dart';

@LazySingleton()
class AppNavigator {
  const AppNavigator(this._appRouter);

  final AppRouter _appRouter;

  /// Push a new route onto the stack
  Future<T?>? push<T extends Object?>(PageRouteInfo route) =>
      _appRouter.navigatorKey.currentContext?.pushRoute<T>(route);

  /// Replace the current route with a new one
  Future<T?>? replace<T extends Object?>(PageRouteInfo route) =>
      _appRouter.navigatorKey.currentContext?.replaceRoute<T>(route);

  /// Pop the top page off the Navigator's page stack by calling
  /// [Navigator.pop].
  Future<bool>? pop<T extends Object?>([T? result]) =>
      _appRouter.navigatorKey.currentContext?.maybePop<T>(result);

  /// Pop all routes until the specified route name is reached.
  Future<void>? popUntil(PageRouteInfo route) =>
      _appRouter.navigatorKey.currentContext?.pushRoute(route);

  /// Replace all routes with a new route (reset the stack)
  /// Remove the whole current pages stack and push all given [routes]
  ///
  /// if [onFailure] callback is provided, navigation errors will be passed to it
  /// otherwise they'll be thrown
  ///
  /// if [updateExistingRoutes] is set to false a fresh stack
  /// will be initiated.
  Future<void> replaceAllWith(PageRouteInfo route) {
    return _appRouter.replaceAll([route]);
  }

  /// Clear all routes and push a new one.
  Future<void> clearAndPush(PageRouteInfo route) {
    _appRouter.replaceAll([route]);
    return _appRouter.push(route);
  }
}
