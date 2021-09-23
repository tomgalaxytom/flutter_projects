import 'package:flutter/material.dart';

class MyNavigator {
  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, "/home");
  }

  static void goToOtpVerification(BuildContext context) {
    Navigator.pushNamed(context, "/otpverification");
  }
}
