import 'package:desafio_web_motors/app/feature/main_list/components/vehicle_card.dart';
import 'package:desafio_web_motors/app/feature/main_list/components/vehicle_detail_card.dart';
import 'package:desafio_web_motors/app/feature/main_list/model/vehicle.dart';
import 'package:desafio_web_motors/app/feature/main_list/providers/main_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class VehicleDetailScreen extends StatelessWidget {
  final Vehicle vehicle;
  const VehicleDetailScreen({Key? key, required this.vehicle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: const Text('Resultado')),
      body: VehicleDetailCard(vehicle: vehicle,)
   );
  }
}


