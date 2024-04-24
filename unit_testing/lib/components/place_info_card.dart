import 'package:flutter/material.dart';
import 'package:unit_testing/model/location.dart';

class PlaceInfo extends StatelessWidget {
  final Location data;
  const PlaceInfo({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 20,
            color: Colors.black45,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "${data.name}\n${data.country}",
            style: const TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            data.image,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            data.info,
            style: const TextStyle(fontSize: 23),
          ),
        ],
      ),
    );
  }
}
