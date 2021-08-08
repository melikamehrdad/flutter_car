import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewLastService extends StatefulWidget {
  @override
  _NewLastServiceState createState() => _NewLastServiceState();
}

class _NewLastServiceState extends State<NewLastService> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff020303),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 16,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xff4DCE00),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TabBar(
                    unselectedLabelColor: Colors.grey,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey),
                    tabs: [
                      Tab(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border:
                                  Border.all(color: Colors.grey, width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("LAST DAYS"),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border:
                                  Border.all(color: Colors.grey, width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("TODAY"),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border:
                              Border.all(color: Colors.grey, width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("NEXT DAY"),
                          ),
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  myTabBarSelect(int select) {}

  myTabBar() {
    Color backgroundColor;
    Color borderColor;
    Color textColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FlatButton(
          padding: EdgeInsets.all(0),
          onPressed: () {
            borderColor = Colors.grey;
            borderColor = Colors.black;
            textColor = Colors.grey;
          },
          child: Container(
            width: 80,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              border: Border.all(color: borderColor, width: 2),
            ),
            child: Text(
              'FORGET',
              style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        FlatButton(
          padding: EdgeInsets.all(0),
          onPressed: () {
            borderColor = Colors.grey;
            borderColor = Colors.black;
            textColor = Colors.grey;
          },
          child: Container(
            width: 80,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              border: Border.all(color: borderColor, width: 2),
            ),
            child: Text(
              'NOW',
              style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        FlatButton(
          padding: EdgeInsets.all(0),
          onPressed: () {
            borderColor = Colors.grey;
            borderColor = Colors.black;
            textColor = Colors.grey;
          },
          child: Container(
            width: 80,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              border: Border.all(color: borderColor, width: 2),
            ),
            child: Text(
              'FUTURE',
              style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
