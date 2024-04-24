import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget ExampleWidget({String? name}) {
    return Container(
      margin: EdgeInsets.all(5),
      color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      child: Center(child: Text(name!)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(10, (index) {
            return ExampleWidget(
              name: ' Count ${index + 1}',
            );
          }),
        ),
      ),
    );
  }
}
