import 'package:fiverr_cachemoney/pay/request_pay.dart';
import 'package:fiverr_cachemoney/reports/report.dart';
import 'package:fiverr_cachemoney/widgets/google_nav_bar/google_nav_bar.dart';
import 'package:fiverr_cachemoney/home/portfolio_summary.dart';
import 'package:fiverr_cachemoney/home/investment_portfolio_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    List<Widget> childs = [];
    childs.add(Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Recent Transaction",
        style: TextStyle(color: Colors.grey, fontSize: 16),
      ),
    ));
    for (var i = 0; i < 10; i++) {
      childs.add(new SizedBox(
        height: 10,
      ));
      childs.add(
        new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              // height: 100,
              // width: 300,
              child: ListTile(
                dense: true,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.grey.shade800,
                        Colors.black,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.view_week,
                      color: Colors.white,
                    ),
                  ),
                ),
                title: Text(
                  "Manulife Cash Fund",
                  style: TextStyle(
                      fontSize: 18,
                      // fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                subtitle: Text(
                  "Mutual Funds",
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
          ],
        ),
      );
    }
    return Column(children: childs);
  }
}
