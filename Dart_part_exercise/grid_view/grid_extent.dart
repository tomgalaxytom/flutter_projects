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
        body: GridView.extent(
          maxCrossAxisExtent: 120,
          children: List.generate(10, (index) {
            return ExampleWidget(
              name: 'Max Extent ${index + 1}',
            );
          }),
        ),
      ),
    );
  }
}
//When we use count in grid All Mobile reslution 2 grid will come.

//when we use extent in grid All Mobile resolution it will change
//mobile version 2 grid,tab version 3 grid,....