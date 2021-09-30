import 'package:flutter_ap/login_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
// import 'login_screen.dart';
import 'homepage.dart';

void main() {
  runApp(InitialScreen());
}

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(
        duration: 3,
        goToPage: LoginScreen(),
      ),
      title: appName,
      debugShowCheckedModeBanner: false,
    );
  }
}
