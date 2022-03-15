import 'package:desafio_web_motors/app/feature/main_list/model/vehicle.dart';
import 'package:flutter/material.dart';

class ImageComponent extends StatelessWidget {
  final Vehicle vehicle;
  const ImageComponent({Key? key, required this.vehicle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10)), // Image border
            child: Image.network(vehicle.image!, fit: BoxFit.fill,
            height: 200,
            width: MediaQuery.of(context).size.width,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 170, left: 12, right: 12),
            child: Row(
              children: [
                Text('R\$ ${vehicle.price}'),
                const Spacer(),
                const Icon(Icons.photo_camera),
                const Text('1')
              ],
            ),
          )
        ],
      ),
    );
  }
}
