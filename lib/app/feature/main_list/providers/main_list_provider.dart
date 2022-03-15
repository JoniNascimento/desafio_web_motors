import 'package:desafio_web_motors/app/feature/main_list/repositories/vehicles_repository.dart';
import 'package:desafio_web_motors/app/feature/main_list/state_notifiers/main_list_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainVehicleListRepositoryProvider = Provider<VehiclesRepository>(
  (ref) => VehiclesRepository(),
);

final mainVehicleListStateNotifierProvider =
    StateNotifierProvider<MainListStateNotifier, MainListState>(
  (ref) => MainListStateNotifier(vehiclesRepository: ref.read(mainVehicleListRepositoryProvider),
  ),
);