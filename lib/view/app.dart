import 'package:flutter/material.dart';
import 'home/home_view.dart';
import 'splash/splash_view.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => HomeScreen(),
  // "/intro": (BuildContext context) => IntroScreen(),
};

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.red,
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(secondary: Colors.yellowAccent)),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: routes);
  }
}
