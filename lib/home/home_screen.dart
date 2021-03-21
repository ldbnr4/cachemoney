import 'package:fiverr_cachemoney/pay/request_pay.dart';
import 'package:fiverr_cachemoney/reports/report.dart';
import 'package:fiverr_cachemoney/widgets/google_nav_bar/google_nav_bar.dart';
import 'package:fiverr_cachemoney/home/portfolio_summary.dart';
import 'package:fiverr_cachemoney/home/investment_portfolio_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<Widget> getList() {
    List<Widget> childs = [];
    childs.addAll([
      PortfolioSummary(),
      SizedBox(
        height: 10,
      ),
      InvestmentPortfolioList(),
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
    ]);
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
    return childs;
  }

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => RequestPay()));
            },
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 30,
                width: 30,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Color(0xff2C3E40), borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Icon(FontAwesomeIcons.equals),
                ),
              ),
            ),
          ),
          title: Text(
            "CACHEMONEY",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orangeAccent),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RequestPay()));
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
                    child: Image.network("https://writestylesonline.com/wp-content/uploads/2016/08/Follow-These-Steps-for-a-Flawless-Professional-Profile-Picture-1024x1024.jpg"),
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
              children: getList(),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.black12, boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
          ]),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
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
