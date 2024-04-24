import 'package:flutter/material.dart';

import 'screens/custompainterexample.dart';
import 'screens/gridview.dart';
import 'screens/homescreen.dart';
import 'screens/listview.dart';
import 'screens/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Example',
      home: const HomeScreen(), // route for home is '/' implicitly
      routes: <String, WidgetBuilder>{
        // define the routes
        GridViewWithColors.routeName: (BuildContext context) =>
            const GridViewWithColors(),
        SettingsScreen.routeName: (BuildContext context) =>
            const SettingsScreen(),

        ListViewWithCards.routeName: (BuildContext context) =>
            ListViewWithCards(),

            CustomScreen.routeName: (BuildContext context) =>
            CustomScreen(),
            
      },
    );
  }
}
