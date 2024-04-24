import 'dart:math';

import 'package:flutter/material.dart';

class ListViewWithCards extends StatelessWidget {
  static const String routeName = "/listview";
  final List<Map<String, String>> items = [
    {'title': 'Item 1', 'subtitle': 'Subtitle for Item 1'},
    {'title': 'Item 2', 'subtitle': 'Subtitle for Item 2'},
    {'title': 'Item 3', 'subtitle': 'Subtitle for Item 3'},
    {'title': 'Item 4', 'subtitle': 'Subtitle for Item 4'},
    {'title': 'Item 5', 'subtitle': 'Subtitle for Item 5'},
  ];

  ListViewWithCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView with Cards Example'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
            child: ListTile(
              title: Text(
                items[index]['title']!,
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: Text(items[index]['subtitle']!,style: const TextStyle(color: Colors.white),),
              leading: const Icon(
                  Icons.person,color: Colors.white,), // You can customize the leading icon
              trailing: const Icon(
                  Icons.arrow_forward), // You can customize the trailing icon
              onTap: () {
                // Action to perform when the card is tapped
                print('Tapped on item ${index + 1}');
              },
            ),
          );
        },
      ),
    );
  }
}
