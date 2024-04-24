import 'dart:math';

import 'package:flutter/material.dart';

class GridViewWithColors extends StatelessWidget {
  static const String routeName = "/gridview";
  const GridViewWithColors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Example'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
        ),
        itemCount: 20, // Number of items
        itemBuilder: (context, index) {
          // Generate a unique color for each item

          return Container(
            margin: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.primaries[Random()
                  .nextInt(Colors.primaries.length)], // White background color
              borderRadius: BorderRadius.circular(12.0), // Border radius
              boxShadow: [
                BoxShadow(
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)],
                  //color: Colors.grey.withOpacity(0.3), // Shadow color
                  spreadRadius: 2, // Spread radius
                  blurRadius: 5, // Blur radius
                  offset: const Offset(0, 3), // Offset in x and y directions
                ),
              ],
            ),
            child: Center(
              child: Text(
                'Item $index',
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          );
        },
      ),
    );
  }
}
