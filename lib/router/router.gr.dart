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
import 'dart:io' as _i5;

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../presentation/camera_screen.dart' as _i2;
import '../presentation/img_preview.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    ImgPreviewRoute.name: (routeData) {
      final args = routeData.argsAs<ImgPreviewRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.ImgPreview(
          key: args.key,
          title: args.title,
          file: args.file,
        ),
      );
    },
    CameraScreenRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.CameraScreen(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          ImgPreviewRoute.name,
          path: '/img-preview',
        ),
        _i3.RouteConfig(
          CameraScreenRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.ImgPreview]
class ImgPreviewRoute extends _i3.PageRouteInfo<ImgPreviewRouteArgs> {
  ImgPreviewRoute({
    _i4.Key? key,
    required String title,
    required _i5.File file,
  }) : super(
          ImgPreviewRoute.name,
          path: '/img-preview',
          args: ImgPreviewRouteArgs(
            key: key,
            title: title,
            file: file,
          ),
        );

  static const String name = 'ImgPreviewRoute';
}

class ImgPreviewRouteArgs {
  const ImgPreviewRouteArgs({
    this.key,
    required this.title,
    required this.file,
  });

  final _i4.Key? key;

  final String title;

  final _i5.File file;

  @override
  String toString() {
    return 'ImgPreviewRouteArgs{key: $key, title: $title, file: $file}';
  }
}

/// generated route for
/// [_i2.CameraScreen]
class CameraScreenRoute extends _i3.PageRouteInfo<void> {
  const CameraScreenRoute()
      : super(
          CameraScreenRoute.name,
          path: '/',
        );

  static const String name = 'CameraScreenRoute';
}
