// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../data/models/device_response_model/device_model.dart' as _i7;
import '../presentation/screens/device_detail.dart' as _i4;
import '../presentation/screens/home.dart' as _i1;
import '../presentation/screens/profile.dart' as _i3;
import '../presentation/screens/schedule.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    ScheduleScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.ScheduleScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ProfileScreen(),
      );
    },
    DeviceDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DeviceDetailScreenRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.DeviceDetailScreen(
          key: args.key,
          model: args.model,
        ),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          HomeScreenRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          ScheduleScreenRoute.name,
          path: '/schedule-screen',
        ),
        _i5.RouteConfig(
          ProfileScreenRoute.name,
          path: '/profile-screen',
        ),
        _i5.RouteConfig(
          DeviceDetailScreenRoute.name,
          path: '/device-detail-screen',
        ),
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreenRoute extends _i5.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i2.ScheduleScreen]
class ScheduleScreenRoute extends _i5.PageRouteInfo<void> {
  const ScheduleScreenRoute()
      : super(
          ScheduleScreenRoute.name,
          path: '/schedule-screen',
        );

  static const String name = 'ScheduleScreenRoute';
}

/// generated route for
/// [_i3.ProfileScreen]
class ProfileScreenRoute extends _i5.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: '/profile-screen',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i4.DeviceDetailScreen]
class DeviceDetailScreenRoute
    extends _i5.PageRouteInfo<DeviceDetailScreenRouteArgs> {
  DeviceDetailScreenRoute({
    _i6.Key? key,
    required _i7.DeviceModel model,
  }) : super(
          DeviceDetailScreenRoute.name,
          path: '/device-detail-screen',
          args: DeviceDetailScreenRouteArgs(
            key: key,
            model: model,
          ),
        );

  static const String name = 'DeviceDetailScreenRoute';
}

class DeviceDetailScreenRouteArgs {
  const DeviceDetailScreenRouteArgs({
    this.key,
    required this.model,
  });

  final _i6.Key? key;

  final _i7.DeviceModel model;

  @override
  String toString() {
    return 'DeviceDetailScreenRouteArgs{key: $key, model: $model}';
  }
}
