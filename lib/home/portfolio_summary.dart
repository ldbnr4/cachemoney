import 'package:fiverr_cachemoney/pay/request_pay.dart';
import 'package:fiverr_cachemoney/reports/report.dart';
import 'package:fiverr_cachemoney/widgets/google_nav_bar/google_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PortfolioSummary extends StatefulWidget {
  @override
  _PortfolioSummaryState createState() => _PortfolioSummaryState();
}

class _PortfolioSummaryState extends State<PortfolioSummary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // width: 120,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: const FractionalOffset(1.0, 1.0),
            end: const FractionalOffset(0.0, 0.0),
            // stops: [0.2, 0.5, 0.7, 0.9],
            colors: [
              Colors.black,
              Colors.teal.shade800,
              Colors.teal,
              Colors.amber,
              Colors.amberAccent,
            ],
          ),
          borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Your Portfolio",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "\$450,937",
              style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Total Profit",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "\$12,484",
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  color: Color(0xff5BC7B1),
                  width: 80,
                  height: 30,
                  child: Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_drop_up,
                            color: Colors.white,
                          ),
                          Text(
                            "+ 2.5%",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
