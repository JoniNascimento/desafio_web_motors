import 'package:desafio_web_motors/app/feature/main_list/model/vehicle.dart';
import 'package:flutter/material.dart';

class DetailContentDetailScreen extends StatelessWidget {
  final Vehicle vehicle;
  const DetailContentDetailScreen({Key? key, required this.vehicle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Text(
            '${vehicle.make} ${vehicle.model} ',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            '${vehicle.version}',
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(children: [
            const Icon(
              Icons.speed,
              color: Colors.grey,
              size: 18,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(vehicle.kM.toString(),
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    fontWeight: FontWeight.bold)),
            const Spacer(),
            const Icon(
              Icons.invert_colors_on_rounded,
              color: Colors.grey,
              size: 18,
            ),
            Text(vehicle.color!,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.bold)),
            const Spacer(),
          ]),
          const SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}
