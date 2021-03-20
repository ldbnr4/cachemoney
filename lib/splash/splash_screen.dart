import 'package:fiverr_cachemoney/auth/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 5), () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignIn())));
//   }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/icons/cachemoney-light.png'),
              Center(
                child: new RichText(
                  text: new TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: new TextStyle(
                      fontSize: 35.0,
                      color: Colors.white,
                    ),
                    children: <TextSpan>[
                      new TextSpan(text: 'Keep your '),
                      new TextSpan(text: 'head ', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.amber)),
                      new TextSpan(text: 'up,'),
                      new TextSpan(text: '\n'),
                      new TextSpan(text: 'Keep your '),
                      new TextSpan(text: 'bread ', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                      new TextSpan(text: 'up'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Text(
                    'A simple and easy way for you to invest and earn passive income!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
