import 'package:flutter/material.dart';
import 'package:downloader/screens/homePage.dart';
import 'package:downloader/screens/servicesPage.dart';
import 'package:downloader/screens/splashPage.dart';
import 'package:downloader/widgets/colors.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

import 'screens/aboutPage.dart';
import 'widgets/pdfViewer.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(
      debug: true // optional: set false to disable printing logs to console
      );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(elevation: 0),
        brightness: Brightness.light,
        primaryColor: Colors.white,
        //colorScheme:  ColorScheme(background: kBackgroundColor),
      ),
      initialRoute: '/splash',
      routes: {
        //'/splash': (context) => SwipPage(),
        '/splash': (context) => const PDFView(),
        '/home': (context) => HomePage(),
        '/service': (context) => ServicesPage(),
        '/aboutus': (context) => LoginScreen(),
      },
    );
  }
}
