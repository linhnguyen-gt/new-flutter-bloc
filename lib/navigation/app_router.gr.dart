// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i5;
import 'package:new_flutter_bloc/model/count/count_model.dart' as _i4;
import 'package:new_flutter_bloc/view/page_one/page_one.dart' as _i1;
import 'package:new_flutter_bloc/view/page_two/page_two.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    RouteOne.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.PageOne(),
      );
    },
    RouteTwo.name: (routeData) {
      final args = routeData.argsAs<RouteTwoArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.PageTwo(
          countPageOne: args.countPageOne,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.PageOne]
class RouteOne extends _i3.PageRouteInfo<void> {
  const RouteOne({List<_i3.PageRouteInfo>? children})
      : super(
          RouteOne.name,
          initialChildren: children,
        );

  static const String name = 'RouteOne';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.PageTwo]
class RouteTwo extends _i3.PageRouteInfo<RouteTwoArgs> {
  RouteTwo({
    required _i4.CountModel countPageOne,
    _i5.Key? key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          RouteTwo.name,
          args: RouteTwoArgs(
            countPageOne: countPageOne,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'RouteTwo';

  static const _i3.PageInfo<RouteTwoArgs> page =
      _i3.PageInfo<RouteTwoArgs>(name);
}

class RouteTwoArgs {
  const RouteTwoArgs({
    required this.countPageOne,
    this.key,
  });

  final _i4.CountModel countPageOne;

  final _i5.Key? key;

  @override
  String toString() {
    return 'RouteTwoArgs{countPageOne: $countPageOne, key: $key}';
  }
}
