import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = "/settings";

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: const Center(
        child: ColoredBox(
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Hello, World!', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}

class ColoredBox extends StatelessWidget {
  final Color color;
  final Widget child;

  const ColoredBox({
    super.key,
    required this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: child,
    );
  }
}
