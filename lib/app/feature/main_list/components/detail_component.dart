import 'dart:ffi';

import 'package:desafio_web_motors/app/feature/main_list/model/vehicle.dart';
import 'package:flutter/material.dart';

class DetailComponent extends StatelessWidget {
  final Vehicle vehicle;
  const DetailComponent({Key? key, required this.vehicle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
        Text('${vehicle.yearModel}/${vehicle.yearFab}',
            style: const TextStyle(color: Colors.grey, fontSize: 12)),
        const SizedBox(
          height: 6,
        ),
        Row(children: [
          const Text('Super destaque',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold)),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(width: 1, color: Colors.transparent),
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: const Text('Publicado', style: TextStyle(color: Colors.white),),
          )
        ]),
        const SizedBox(height: 12,)
      ]),
    );
  }
}
