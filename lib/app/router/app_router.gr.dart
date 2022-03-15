// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../feature/main_list/model/vehicle.dart' as _i5;
import '../feature/main_list/screen/main_list_screen.dart' as _i1;
import '../feature/main_list/screen/vehicle_detail_screen.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    MainListScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainListScreen());
    },
    VehicleDetailScreen.name: (routeData) {
      final args = routeData.argsAs<VehicleDetailScreenArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.VehicleDetailScreen(key: args.key, vehicle: args.vehicle));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(MainListScreen.name, path: '/'),
        _i3.RouteConfig(VehicleDetailScreen.name,
            path: '/vehicle_detail_screen')
      ];
}

/// generated route for
/// [_i1.MainListScreen]
class MainListScreen extends _i3.PageRouteInfo<void> {
  const MainListScreen() : super(MainListScreen.name, path: '/');

  static const String name = 'MainListScreen';
}

/// generated route for
/// [_i2.VehicleDetailScreen]
class VehicleDetailScreen extends _i3.PageRouteInfo<VehicleDetailScreenArgs> {
  VehicleDetailScreen({_i4.Key? key, required _i5.Vehicle vehicle})
      : super(VehicleDetailScreen.name,
            path: '/vehicle_detail_screen',
            args: VehicleDetailScreenArgs(key: key, vehicle: vehicle));

  static const String name = 'VehicleDetailScreen';
}

class VehicleDetailScreenArgs {
  const VehicleDetailScreenArgs({this.key, required this.vehicle});

  final _i4.Key? key;

  final _i5.Vehicle vehicle;

  @override
  String toString() {
    return 'VehicleDetailScreenArgs{key: $key, vehicle: $vehicle}';
  }
}
