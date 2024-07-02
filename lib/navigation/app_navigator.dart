import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'app_router.dart';

@LazySingleton()
class AppNavigator {
  const AppNavigator(this._appRouter);

  final AppRouter _appRouter;

  Future<T?>? push<T extends Object?>(PageRouteInfo route) =>
      _appRouter.push<T>(route);

  Future<T?>? replace<T extends Object?>(PageRouteInfo page) =>
      _appRouter.replace(page);

  /// Pop the top page off the Navigator's page stack by calling
  /// [Navigator.pop].
  void pop<T extends Object?>([T? result]) => _appRouter.maybePop(result);
}
