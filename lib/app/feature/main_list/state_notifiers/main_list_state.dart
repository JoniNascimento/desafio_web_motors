import 'package:desafio_web_motors/app/shared/state_notifiers/common_state.dart';
import 'package:desafio_web_motors/app/feature/main_list/model/vehicle.dart';
import 'package:desafio_web_motors/app/feature/main_list/repositories/vehicles_repository.dart';
import 'package:state_notifier/state_notifier.dart';

typedef MainListState = CommonState<String, List<Vehicle>>;

class MainListStateNotifier extends StateNotifier<MainListState> {
  MainListStateNotifier({required VehiclesRepository vehiclesRepository})
      : _vehiclesRepository = vehiclesRepository,
        super(const MainListState.initial());
  final VehiclesRepository _vehiclesRepository;
  Future<void> getVechiclesList(int page) async {
    List<Vehicle>? vehiclesList;
    final result = await _vehiclesRepository.getVehiclesList(page);
    if (page == 1) {
      vehiclesList = (result?.data as List)
          .map((vehicle) => Vehicle.fromJson(vehicle))
          .toList();
    } else {
      vehiclesList = (state as CommonStateSuccessful).success;
      vehiclesList!.addAll((result?.data as List)
          .map((vehicle) => Vehicle.fromJson(vehicle))
          .toList());
    }
    state = MainListState.successful(vehiclesList, false);
  }
}
