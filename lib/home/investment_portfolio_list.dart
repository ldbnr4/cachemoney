import 'package:fiverr_cachemoney/pay/request_pay.dart';
import 'package:fiverr_cachemoney/reports/report.dart';
import 'package:fiverr_cachemoney/widgets/google_nav_bar/google_nav_bar.dart';
import 'package:fiverr_cachemoney/home/portfolio_summary.dart';
import 'package:fiverr_cachemoney/home/investment_portfolio_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InvestmentPortfolioList extends StatefulWidget {
  @override
  _InvestmentPortfolioListState createState() => _InvestmentPortfolioListState();
}

class _InvestmentPortfolioListState extends State<InvestmentPortfolioList> {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Portfolio",
            style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
          ),
          Text(
            "View All",
            style: TextStyle(color: Colors.grey.shade300, fontSize: 18),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ReportScreen()));
        },
        child: Container(
          height: 180,
          child: ListView(
              shrinkWrap: true,
              // physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10),
              children: <Widget>[
                for (var i in [
                  "AAPL",
                  "MSFT",
                  "GOOGL",
                  "FB",
                  "AMZN"
                ])
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    height: 160,
                    width: MediaQuery.of(context).size.width * .5,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.grey.shade800,
                            Colors.black,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          ListTile(
                            dense: true,
                            leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
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
                              ),
                              child: Center(
                                child: Icon(
                                  FontAwesomeIcons.apple,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            title: Text(
                              i,
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            subtitle: Text(
                              "Apple Inc",
                              style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 15),
                            child: Text(
                              "Portfolio",
                              style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "\$12,484",
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  // color: Color(0xff5BC7B1),
                                  // width: 80,
                                  // height: 30,
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
                          ),
                        ],
                      ),
                    ),
                  ),
              ]),
        ),
      ),
    ];
  }
}
