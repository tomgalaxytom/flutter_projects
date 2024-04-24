import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget ExampleWidget({String? name}) {
    return Card(
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        child: ListTile(
          title: Text(name!),
          subtitle: Text('Description'),
          leading: Icon(Icons.shop),
          trailing: Icon(Icons.arrow_right),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ExampleWidget(name: 'Separated Box ${index + 1}');
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 8,
            );
          },
          itemCount: 20,
        ),
      ),
    );
  }
}
