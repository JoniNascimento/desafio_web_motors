import 'package:auto_route/auto_route.dart';
import 'package:desafio_web_motors/app/feature/main_list/components/detail_component.dart';
import 'package:desafio_web_motors/app/feature/main_list/components/image_component.dart';
import 'package:desafio_web_motors/app/feature/main_list/model/vehicle.dart';
import 'package:desafio_web_motors/app/router/app_router.gr.dart';
import 'package:flutter/material.dart';

class VechicleCard extends StatelessWidget {
  final Vehicle vehicle;
  const VechicleCard({ Key? key, required this.vehicle }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.transparent),
            borderRadius:const BorderRadius.all(
                Radius.circular(10),
              ), ),
            child: Column(children: [
               ImageComponent(vehicle: vehicle,),  
               DetailComponent(vehicle: vehicle,)    
            ]),
          ),
        ],
      ),
      onTap: () => context.router.push(VehicleDetailScreen(vehicle: vehicle)),
    );
  }
}