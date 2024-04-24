import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Clipper Example',
      home: ClipperDemo(),
    );
  }
}

class ClipperDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Custom Clipper Example'),
        ),
        body: //Center(
            Row(children: [
          Text("stalin", style: TextStyle(fontSize: 30)),
          Spacer(),
          ClipPath(
            clipper: StarClipper(), // Use the custom clipper here
            child: Container(
              width: 30,
              height: 30,
              color: Colors.red,
            ),
          ),
        ])

        //),
        );
  }
}

class StarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Define the outer points of the star
    List<Offset> outerPoints = [];
    double angleStep =
        math.pi / 5; // Divide the circle into 5 parts for the star points
    double radius = size.width / 2; // Use half of the width as the radius

    for (int i = 0; i < 5; i++) {
      double x =
          size.width / 2 + math.cos(i * 2 * angleStep + math.pi / 2) * radius;
      double y =
          size.height / 2 + math.sin(i * 2 * angleStep + math.pi / 2) * radius;
      outerPoints.add(Offset(x, y));
    }

    // Define the inner points of the star
    List<Offset> innerPoints = [];
    double innerRadius =
        radius / 2; // Use half of the outer radius for the inner radius

    for (int i = 0; i < 5; i++) {
      double x = size.width / 2 +
          math.cos((i * 2 + 1) * angleStep + math.pi / 2) * innerRadius;
      double y = size.height / 2 +
          math.sin((i * 2 + 1) * angleStep + math.pi / 2) * innerRadius;
      innerPoints.add(Offset(x, y));
    }

    // Move to the first outer point
    path.moveTo(outerPoints[0].dx, outerPoints[0].dy);

    // Connect the outer and inner points to form the star shape
    for (int i = 0; i < 5; i++) {
      path.lineTo(innerPoints[i].dx, innerPoints[i].dy);
      path.lineTo(outerPoints[(i + 1) % 5].dx, outerPoints[(i + 1) % 5].dy);
    }

    path.close(); // Close the path to form a closed shape

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // We don't need to update the clipping path dynamically, so we return false
    return false;
  }
}
