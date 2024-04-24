import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget ExampleWidget({String? name}) {
    return Text(name!);
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
