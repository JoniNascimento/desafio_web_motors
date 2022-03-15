import 'package:desafio_web_motors/app/feature/main_list/components/detail_content_detail_screen.dart';
import 'package:desafio_web_motors/app/feature/main_list/components/image_component.dart';
import 'package:desafio_web_motors/app/feature/main_list/model/vehicle.dart';
import 'package:flutter/material.dart';

class VehicleDetailCard extends StatelessWidget {
  final Vehicle vehicle;
  const VehicleDetailCard({Key? key, required this.vehicle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 1, color: Colors.transparent),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ImageComponent(
              vehicle: vehicle,
            ),
            DetailContentDetailScreen(vehicle: vehicle)
            
          ]),
        ),
      ],
    );
  }
}
