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
      body: Container(
          child: const Center(
        child: Text("Settings Screen"),
      )),
    );
  }
}
