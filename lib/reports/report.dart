import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
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
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
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
                            height: 80,
                            width: 50,
                            decoration: BoxDecoration(
                              // shape: BoxShape.circle,
                              borderRadius: BorderRadius.circular(10),
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
                                Icons.view_week,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          title: Text(
                            "Manulife Insurance",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          subtitle: Text(
                            "Last Update Aug24,6 PM",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade700),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Portfolio Value",
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "\$120,484",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Expense Ratio",
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "0.69%",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      padding: EdgeInsets.all(10),
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
                          child: Text(
                        '1 Day',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    Container(
                      height: 40,
                      padding: EdgeInsets.all(10),
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
                          child: Text(
                        '1 Week',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    Container(
                      height: 40,
                      padding: EdgeInsets.all(10),
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
                          child: Text(
                        '1 Month',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    Container(
                      height: 40,
                      padding: EdgeInsets.all(10),
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
                          child: Text(
                        '1 Years',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    Container(
                      height: 40,
                      padding: EdgeInsets.all(10),
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
                          child: Text(
                        'All',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                sample1(context),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 120,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.grey.shade800,
                        Colors.black,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ListTile(
                    dense: true,
                    leading: Container(
                      height: 50,
                      width: 50,
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
                          Icons.settings,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    title: Text(
                      "Quick Investment Tips",
                      style: TextStyle(
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        "Don't be too rush when investing try to understand the wave & ready to go.",
                        style: TextStyle(
                            fontSize: 15, color: Colors.grey.shade700),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget sample1(BuildContext context) {
  return Center(
    child: Container(
      color: Colors.black12,
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width * 0.9,
      child: BezierChart(
        bezierChartScale: BezierChartScale.CUSTOM,
        xAxisCustomValues: const [0, 5, 10, 15, 20, 25, 30, 35],
        series: const [
          BezierLine(
            data: const [
              DataPoint<double>(value: 10, xAxis: 0),
              DataPoint<double>(value: 130, xAxis: 5),
              DataPoint<double>(value: 50, xAxis: 10),
              DataPoint<double>(value: 150, xAxis: 15),
              DataPoint<double>(value: 75, xAxis: 20),
              DataPoint<double>(value: 0, xAxis: 25),
              DataPoint<double>(value: 5, xAxis: 30),
              DataPoint<double>(value: 45, xAxis: 35),
            ],
          ),
        ],
        config: BezierChartConfig(
          verticalIndicatorStrokeWidth: 3.0,
          verticalIndicatorColor: Colors.black26,
          showVerticalIndicator: true,
          backgroundColor: Colors.black12,
          snap: false,
        ),
      ),
    ),
  );
}
