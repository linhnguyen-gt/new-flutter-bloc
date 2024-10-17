import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../base/interfaces/i_navigator.dart';
import 'app_router.dart';

@LazySingleton()
class AppNavigator implements INavigator {
  const AppNavigator(this._appRouter);

  final AppRouter _appRouter;

  BuildContext? get _context => _appRouter.navigatorKey.currentContext;

  /// Push a new route onto the stack
  @override
  Future<T?>? push<T extends Object?>(PageRouteInfo route) =>
      _context?.pushRoute<T>(route);

  /// Replace the current route with a new one
  @override
  Future<T?>? replace<T extends Object?>(PageRouteInfo route) =>
      _context?.replaceRoute<T>(route);

  /// Pop the top page off the Navigator's page stack by calling
  /// [Navigator.pop].
  @override
  Future<bool>? pop<T extends Object?>([T? result]) =>
      _context?.maybePop<T>(result);

  /// Pop all routes until the specified route name is reached.
  @override
  Future<void>? popUntil(PageRouteInfo route) => _context?.pushRoute(route);

  /// Replace all routes with a new route (reset the stack)
  /// Remove the whole current pages stack and push all given [routes]
  ///
  /// if [onFailure] callback is provided, navigation errors will be passed to it
  /// otherwise they'll be thrown
  ///
  /// if [updateExistingRoutes] is set to false a fresh stack
  /// will be initiated.
  @override
  Future<void> replaceAllWith(PageRouteInfo route) {
    return _appRouter.replaceAll([route]);
  }

  /// Clear all routes and push a new one.
  @override
  Future<void> clearAndPush(PageRouteInfo route) {
    _appRouter.replaceAll([route]);
    return _appRouter.push(route);
  }
}
