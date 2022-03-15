import 'package:auto_route/annotations.dart';
import 'package:desafio_web_motors/app/feature/main_list/screen/main_list_screen.dart';
import 'package:desafio_web_motors/app/feature/main_list/screen/vehicle_detail_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: MainListScreen,
    ),
    AutoRoute(
      path: '/vehicle_detail_screen',
      page: VehicleDetailScreen,
    ),

  ])
  class $AppRouter {
    
  }