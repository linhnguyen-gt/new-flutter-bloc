// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i6;
import 'package:new_flutter_bloc/model/count/count_model.dart' as _i5;
import 'package:new_flutter_bloc/view/login/login_page.dart' as _i1;
import 'package:new_flutter_bloc/view/page_one/page_one.dart' as _i2;
import 'package:new_flutter_bloc/view/page_two/page_two.dart' as _i3;

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute({List<_i4.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.LoginPage();
    },
  );
}

/// generated route for
/// [_i2.PageOne]
class RouteOne extends _i4.PageRouteInfo<void> {
  const RouteOne({List<_i4.PageRouteInfo>? children})
      : super(
          RouteOne.name,
          initialChildren: children,
        );

  static const String name = 'RouteOne';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.PageOne();
    },
  );
}

/// generated route for
/// [_i3.PageTwo]
class RouteTwo extends _i4.PageRouteInfo<RouteTwoArgs> {
  RouteTwo({
    required _i5.CountModel countPageOne,
    _i6.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          RouteTwo.name,
          args: RouteTwoArgs(
            countPageOne: countPageOne,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'RouteTwo';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RouteTwoArgs>();
      return _i3.PageTwo(
        countPageOne: args.countPageOne,
        key: args.key,
      );
    },
  );
}

class RouteTwoArgs {
  const RouteTwoArgs({
    required this.countPageOne,
    this.key,
  });

  final _i5.CountModel countPageOne;

  final _i6.Key? key;

  @override
  String toString() {
    return 'RouteTwoArgs{countPageOne: $countPageOne, key: $key}';
  }
}
