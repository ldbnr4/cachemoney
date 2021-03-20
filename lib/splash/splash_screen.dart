import 'package:fiverr_cachemoney/auth/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
              Image.asset('assets/images/icons/logo.jpeg'),
              Center(
                child: Text(
                  'Keep your head up, keep your bread up',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                Text(
                  'Keep your head up, keep your bread up',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 35, color: Colors.green),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Best way to invest & save money for the future just by using your phone',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignIn()));
                },
                child: Container(
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: const FractionalOffset(0.0, 1.0),
                        end: const FractionalOffset(1.0, 0.0),
                        // stops: [0.2, 0.5, 0.7, 0.9],
                        colors: [
                          Color(0xff8AF2FD),
                          Color(0xff5BC7B1),
                          // Color(0xff7DCDE1),
                          Color(0xff148399),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "Invest",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
