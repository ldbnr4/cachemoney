import 'package:fiverr_cachemoney/pay/request_pay.dart';
import 'package:fiverr_cachemoney/reports/report.dart';
import 'package:fiverr_cachemoney/widgets/google_nav_bar/google_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RequestPay()));
            },
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 30,
                width: 30,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: Color(0xff2C3E40),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Icon(FontAwesomeIcons.equals),
                ),
              ),
            ),
          ),
          title: Text(
            "CACHEMONEY",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RequestPay()));
              },
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  height: 30,
                  width: 40,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      // color: Color(0xff2C3E40),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Image.network(
                        "https://writestylesonline.com/wp-content/uploads/2016/08/Follow-These-Steps-for-a-Flawless-Professional-Profile-Picture-1024x1024.jpg"),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  height: 200,
                  // width: 120,
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
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Monthly Profit",
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
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.arrow_drop_up,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "+ 2.5%",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
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
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Portfolio",
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 15),
                    ),
                    Text(
                      "View All",
                      style:
                          TextStyle(color: Colors.grey.shade300, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReportScreen()));
                  },
                  child: Container(
                    height: 180,
                    child: ListView(
                      shrinkWrap: true,
                      // physics: AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(10),
                      children: [
                        Container(
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
                                    "AAPL",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  subtitle: Text(
                                    "Apple Inc",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey.shade700),
                                  ),
                                ),

                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 15),
                                  child: Text(
                                    "Portfolio",
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 16),
                                  ),
                                ),

                                SizedBox(
                                  height: 10,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "\$12,484",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.arrow_drop_up,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  "+ 2.5%",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                // Text(
                                //   "\$450,937",
                                //   style: TextStyle(
                                //       color: Colors.white,
                                //       fontSize: 30,
                                //       fontWeight: FontWeight.bold),
                                // ),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                // Text(
                                //   "Monthly Profit",
                                //   style: TextStyle(color: Colors.white, fontSize: 15),
                                // ),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.center,
                                //   crossAxisAlignment: CrossAxisAlignment.center,
                                //   children: [
                                //     Text(
                                //       "\$12,484",
                                //       style: TextStyle(
                                //           color: Colors.white,
                                //           fontSize: 20,
                                //           fontWeight: FontWeight.bold),
                                //     ),
                                //     SizedBox(
                                //       width: 10,
                                //     ),
                                //     Container(
                                //       child: Row(
                                //         children: [
                                //           Row(
                                //             mainAxisAlignment:
                                //                 MainAxisAlignment.center,
                                //             crossAxisAlignment:
                                //                 CrossAxisAlignment.center,
                                //             children: [
                                //               Icon(
                                //                 Icons.arrow_drop_up,
                                //                 color: Colors.white,
                                //               ),
                                //               Text(
                                //                 "+ 2.5%",
                                //                 style: TextStyle(
                                //                     color: Colors.white,
                                //                     fontSize: 15),
                                //               ),
                                //             ],
                                //           )
                                //         ],
                                //       ),
                                //     ),
                                //   ],
                                // ),
                              ],
                            ),
                          ),
                        ),
                        Container(
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
                                    "AAPL",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  subtitle: Text(
                                    "Apple Inc",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey.shade700),
                                  ),
                                ),

                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 15),
                                  child: Text(
                                    "Portfolio",
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 16),
                                  ),
                                ),

                                SizedBox(
                                  height: 10,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "\$12,484",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.arrow_drop_up,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  "+ 2.5%",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                // Text(
                                //   "\$450,937",
                                //   style: TextStyle(
                                //       color: Colors.white,
                                //       fontSize: 30,
                                //       fontWeight: FontWeight.bold),
                                // ),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                // Text(
                                //   "Monthly Profit",
                                //   style: TextStyle(color: Colors.white, fontSize: 15),
                                // ),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.center,
                                //   crossAxisAlignment: CrossAxisAlignment.center,
                                //   children: [
                                //     Text(
                                //       "\$12,484",
                                //       style: TextStyle(
                                //           color: Colors.white,
                                //           fontSize: 20,
                                //           fontWeight: FontWeight.bold),
                                //     ),
                                //     SizedBox(
                                //       width: 10,
                                //     ),
                                //     Container(
                                //       child: Row(
                                //         children: [
                                //           Row(
                                //             mainAxisAlignment:
                                //                 MainAxisAlignment.center,
                                //             crossAxisAlignment:
                                //                 CrossAxisAlignment.center,
                                //             children: [
                                //               Icon(
                                //                 Icons.arrow_drop_up,
                                //                 color: Colors.white,
                                //               ),
                                //               Text(
                                //                 "+ 2.5%",
                                //                 style: TextStyle(
                                //                     color: Colors.white,
                                //                     fontSize: 15),
                                //               ),
                                //             ],
                                //           )
                                //         ],
                                //       ),
                                //     ),
                                //   ],
                                // ),
                              ],
                            ),
                          ),
                        ),
                        Container(
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
                                    "AAPL",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  subtitle: Text(
                                    "Apple Inc",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey.shade700),
                                  ),
                                ),

                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 15),
                                  child: Text(
                                    "Portfolio",
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 16),
                                  ),
                                ),

                                SizedBox(
                                  height: 10,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "\$12,484",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.arrow_drop_up,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  "+ 2.5%",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                // Text(
                                //   "\$450,937",
                                //   style: TextStyle(
                                //       color: Colors.white,
                                //       fontSize: 30,
                                //       fontWeight: FontWeight.bold),
                                // ),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                // Text(
                                //   "Monthly Profit",
                                //   style: TextStyle(color: Colors.white, fontSize: 15),
                                // ),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.center,
                                //   crossAxisAlignment: CrossAxisAlignment.center,
                                //   children: [
                                //     Text(
                                //       "\$12,484",
                                //       style: TextStyle(
                                //           color: Colors.white,
                                //           fontSize: 20,
                                //           fontWeight: FontWeight.bold),
                                //     ),
                                //     SizedBox(
                                //       width: 10,
                                //     ),
                                //     Container(
                                //       child: Row(
                                //         children: [
                                //           Row(
                                //             mainAxisAlignment:
                                //                 MainAxisAlignment.center,
                                //             crossAxisAlignment:
                                //                 CrossAxisAlignment.center,
                                //             children: [
                                //               Icon(
                                //                 Icons.arrow_drop_up,
                                //                 color: Colors.white,
                                //               ),
                                //               Text(
                                //                 "+ 2.5%",
                                //                 style: TextStyle(
                                //                     color: Colors.white,
                                //                     fontSize: 15),
                                //               ),
                                //             ],
                                //           )
                                //         ],
                                //       ),
                                //     ),
                                //   ],
                                // ),
                              ],
                            ),
                          ),
                        ),
                        Container(
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
                                    "AAPL",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  subtitle: Text(
                                    "Apple Inc",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey.shade700),
                                  ),
                                ),

                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 15),
                                  child: Text(
                                    "Portfolio",
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 16),
                                  ),
                                ),

                                SizedBox(
                                  height: 10,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "\$12,484",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.arrow_drop_up,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  "+ 2.5%",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                // Text(
                                //   "\$450,937",
                                //   style: TextStyle(
                                //       color: Colors.white,
                                //       fontSize: 30,
                                //       fontWeight: FontWeight.bold),
                                // ),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                // Text(
                                //   "Monthly Profit",
                                //   style: TextStyle(color: Colors.white, fontSize: 15),
                                // ),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.center,
                                //   crossAxisAlignment: CrossAxisAlignment.center,
                                //   children: [
                                //     Text(
                                //       "\$12,484",
                                //       style: TextStyle(
                                //           color: Colors.white,
                                //           fontSize: 20,
                                //           fontWeight: FontWeight.bold),
                                //     ),
                                //     SizedBox(
                                //       width: 10,
                                //     ),
                                //     Container(
                                //       child: Row(
                                //         children: [
                                //           Row(
                                //             mainAxisAlignment:
                                //                 MainAxisAlignment.center,
                                //             crossAxisAlignment:
                                //                 CrossAxisAlignment.center,
                                //             children: [
                                //               Icon(
                                //                 Icons.arrow_drop_up,
                                //                 color: Colors.white,
                                //               ),
                                //               Text(
                                //                 "+ 2.5%",
                                //                 style: TextStyle(
                                //                     color: Colors.white,
                                //                     fontSize: 15),
                                //               ),
                                //             ],
                                //           )
                                //         ],
                                //       ),
                                //     ),
                                //   ],
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recent Transaction",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
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
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey.shade700),
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
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
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey.shade700),
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
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
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey.shade700),
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.black12, boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
          ]),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                  rippleColor: Colors.black12,
                  hoverColor: Colors.black12,
                  gap: 8,
                  activeColor: Colors.black,
                  iconSize: 24,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: Duration(milliseconds: 400),
                  tabBackgroundColor: Color(0xff148399),
                  // Color(0xff8AF2FD),
                  // Color(0xff5BC7B1),
                  // // Color(0xff7DCDE1),
                  // Color(0xff148399),
                  tabs: [
                    GButton(
                      icon: Icons.grid_view,
                      text: 'Home',
                      iconColor: Colors.grey.shade700,
                    ),
                    GButton(
                      icon: Icons.insert_chart,
                      text: 'Reports',
                      iconColor: Colors.grey.shade700,
                    ),
                    GButton(
                      icon: Icons.crop_original,
                      text: 'Media',
                      iconColor: Colors.grey.shade700,
                    ),
                    GButton(
                      icon: Icons.account_circle,
                      text: 'Profile',
                      iconColor: Colors.grey.shade700,
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
