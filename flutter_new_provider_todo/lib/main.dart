import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'notifiers/todo_list.dart';
import 'views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider<TodoList>(
        create: (context) => TodoList(),
        child: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
