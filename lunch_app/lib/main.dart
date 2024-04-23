import 'package:flutter/material.dart';
import 'package:lunch_app/views/prototype/food_detail_view.dart';

import 'screens/account.dart';
import 'screens/accountdetails.dart';
import 'screens/settings.dart';
import 'views/prototype/home.dart';

void main() => runApp(const LunchApp());

class LunchApp extends StatelessWidget {
  const LunchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      home: const Home(),
      routes: <String, WidgetBuilder>{
        // define the routes
        SettingsScreen.routeName: (BuildContext context) =>
            const SettingsScreen(),
        AccountScreen.routeName: (BuildContext context) => AccountScreen(),
        AccountDetailsScreen.routeName: (BuildContext context) =>
            const AccountDetailsScreen(),
      },
      // home: FoodDetailView(),
    );
  }
}
