import 'package:flutter_ap/constants.dart';
import 'package:flutter_ap/login_screen.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'colors.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  bgImage,
                  height: height * 0.30,
                  width: width,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: height * 0.30,
                  width: width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          stops: [0.3, 0.75],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.white])),
                ),
                Positioned(
                  top: 180.0,
                  left: 0.0,
                  right: 0.0,
                  child: Center(
                    child: Text(
                      appName,
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 8.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 250.0),
                  child: Center(
                    child: Text(
                      slogan,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20.0),
              child: Container(
                child: Text(
                  "     $register",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        PrimaryColor.withOpacity(0.0),
                        Colors.transparent,
                      ],
                    ),
                    border: Border(
                        left: BorderSide(
                          color: PrimaryColor,
                          width: 7,
                        ))),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: PrimaryColor)),
                    prefixIcon: Icon(
                      Icons.email,
                      color: PrimaryColor,
                    ),
                    labelText: "Enter a Email",
                    labelStyle: TextStyle(
                      color: PrimaryColor,
                      fontSize: 16.0,
                    )),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: PrimaryColor)),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: PrimaryColor,
                    ),
                    labelText: "Enter Mobile Number",
                    labelStyle: TextStyle(
                      color: PrimaryColor,
                      fontSize: 16.0,
                    )),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: PrimaryColor)),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: PrimaryColor,
                    ),
                    labelText: "Enter a Password",
                    labelStyle: TextStyle(
                      color: PrimaryColor,
                      fontSize: 16.0,
                    )),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: PrimaryColor)),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: PrimaryColor,
                    ),
                    labelText: "Enter a Confirm Password",
                    labelStyle: TextStyle(
                      color: PrimaryColor,
                      fontSize: 16.0,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: SizedBox(
                  height: height * 0.08,
                  width: width - 100.0,
                  child: FlatButton(
                    color: PrimaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    onPressed: () {},
                    child: Text(
                      "Register",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          letterSpacing: 1.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already Exists?"),
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                      },
                      child: Text("Click Here",
                          style: TextStyle(
                              color: PrimaryColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold)),
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
