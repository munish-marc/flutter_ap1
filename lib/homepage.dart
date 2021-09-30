import 'package:flutter_ap/colors.dart';
import 'package:flutter/material.dart';
// import 'welcomepage.dart';
// import 'login_screen.dart';
import 'colors.dart';

class homePage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  homePage({this.goToPage, this.duration});
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage));
    });
    return Scaffold(
      body: Container(
        color: PrimaryColor,
        alignment: Alignment.center,
        child: Text(
          'E-SVASTHA',
          style: TextStyle(
            fontSize: 40.0,
            letterSpacing: 2,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
