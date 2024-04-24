import 'package:flutter/material.dart';

class CustomScreen extends StatelessWidget {
  static const String routeName = "/cpscreen";

  const CustomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Center(
        child: CustomPaint(
          size: const Size(20, 20), // Set the size of the CustomPaint widget
          painter: MyPainter(), // Use the custom painter
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue // Set the color of the circle
      ..style = PaintingStyle.fill;
       // Set the painting style to fill

    final center = Offset(
        size.width / 2, size.height / 2); // Calculate the center of the canvas
    final radius = size.width / 3; // Calculate the radius of the circle

    canvas.drawCircle(center, radius, paint); // Draw the circle on the canvas
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // Return false since the drawing never changes
  }
}
