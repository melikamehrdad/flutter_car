import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_car/new_page/info_page.dart';
import 'package:flutter_car/new_page/new_features_page.dart';
import 'package:flutter_car/new_page/new_last_service.dart';
import 'package:flutter_car/new_page/new_map_page.dart';
class NewHomePage extends StatefulWidget {
  @override
  _NewHomePageState createState() => _NewHomePageState();
}

class _NewHomePageState extends State<NewHomePage> {
  bool isToggled = false;
  bool isMenuOpen = false;
  bool isNotificationOpen = false;
  double _menuWidth = 40;
  double _notificationWidth = 40;
  double _menuHeight = 40;
  double _notificationHeight = 40;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff020303),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      width: _notificationWidth,
                      height: _notificationHeight,
                      margin: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: _borderRadius),
                      child: isNotificationOpen
                          ? menuAndNotification()
                          : Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                icon: SvgPicture.asset(
                                  'assets/images/notification.svg',
                                  width: 30,
                                  height: 30,
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (isNotificationOpen) {
                                      _notificationWidth = 40;
                                      _notificationHeight = 40;
                                      isNotificationOpen = false;
                                    } else {
                                      _notificationWidth =
                                          MediaQuery.of(context).size.width /
                                              1.4;
                                      _notificationHeight =
                                          MediaQuery.of(context).size.height /
                                              3;
                                      isNotificationOpen = true;
                                    }
                                  });
                                },
                              ),
                            ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    width: _menuWidth,
                    height: _menuHeight,
                    margin: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: _borderRadius),
                    child: isMenuOpen
                        ? menuAndNotification()
                        : Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              icon: SvgPicture.asset(
                                'assets/images/menu.svg',
                                width: 20,
                                height: 20,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (isMenuOpen) {
                                    _menuWidth = 40;
                                    _menuHeight = 40;
                                    isMenuOpen = false;
                                  } else {
                                    _menuWidth =
                                        MediaQuery.of(context).size.width / 1.4;
                                    _menuHeight =
                                        MediaQuery.of(context).size.height /
                                            1.75;
                                    isMenuOpen = true;
                                  }
                                });
                              },
                            ),
                          ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: Text(
                          'Radar',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: 40,
                      ),
                      // Container(
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.all(Radius.circular(10)),
                      //   ),
                      //   child: Stack(
                      //     children: [
                      //       Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: Container(
                      //           height: 40,
                      //           width: 40,
                      //           margin: EdgeInsets.all(8),
                      //           decoration: BoxDecoration(
                      //               color: Colors.white,
                      //               borderRadius:
                      //                   BorderRadius.all(Radius.circular(10))),
                      //           child: IconButton(
                      //             icon: SvgPicture.asset(
                      //               'assets/images/notification.svg',
                      //               width: 30,
                      //               height: 30,
                      //             ),
                      //             onPressed: () {
                      //                                   setState(() {
                      //                                     if (isNotificationOpen) {
                      //                                       _notificationWidth = 40;
                      //                                       _notificationHeight = 40;
                      //                                       isNotificationOpen = false;
                      //                                     } else {
                      //                                       _notificationWidth =
                      //                                           MediaQuery.of(context).size.width /
                      //                                               1.4;
                      //                                       _notificationHeight =
                      //                                           MediaQuery.of(context).size.height /
                      //                                               3;
                      //                                       isNotificationOpen = true;
                      //                                     }
                      //                                   });
                      //                                 },
                      //           ),
                      //         ),
                      //       ),
                      //       Positioned(
                      //         bottom: 10,
                      //         left: 5,
                      //         child: Container(
                      //           alignment: Alignment.center,
                      //           width: 20,
                      //           height: 20,
                      //           decoration: BoxDecoration(
                      //             borderRadius:
                      //                 BorderRadius.all(Radius.circular(3)),
                      //             color: Color(0xff4DCE00),
                      //           ),
                      //           child: Text(
                      //             '3',
                      //             style: TextStyle(fontSize: 14),
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Image.asset('assets/images/car3.png'),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(18.0, 8.0, 8.0, 8.0),
                      child: FlatButton(
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        child: Text(
                          'CAR INFO',
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InformationPage())),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 18.0, 8.0),
                      child: FlatButton(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color(0xffBBC2CF),
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          'FEATURES',
                          style: TextStyle(color: Color(0xffBBC2CF)),
                        ),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewFeaturesPage())),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 8.0, 8.0, 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Your Car Options',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(18.0, 8.0, 8.0, 8.0),
                    padding: const EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                        color: Colors.white),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/power.svg',
                          height: 30,
                          width: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Car Power',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 8.0, 18.0, 8.0),
                          child: FlutterSwitch(
                            height: 25.0,
                            width: 40.0,
                            padding: 4.0,
                            toggleSize: 15.0,
                            borderRadius: 30.0,
                            activeColor: Color(0xff4DCE00),
                            value: isToggled,
                            onToggle: (value) {
                              setState(() {
                                isToggled = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(1.0, 1.0, 0.0, 1.0),
                    margin: const EdgeInsets.fromLTRB(18.0, 8.0, 8.0, 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30)),
                      color: Colors.grey,
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 30),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                        color: Colors.black,
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/service.svg',
                            height: 30,
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Service',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 8.0, 5.0, 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Oil Change',
                                    style: TextStyle(
                                        color: Color(0xffE3FF00),
                                        fontWeight: FontWeight.bold)),
                                IconButton(
                                  padding: EdgeInsets.all(0),
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 14,
                                  ),
                                  color: Color(0xffE3FF00),
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              NewLastService())),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 8.0, 8.0, 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Last Trip',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewMapPage())),
                  child: Image.asset(
                    'assets/images/trip.png',
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: 70,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  menuAndNotification() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: isMenuOpen ? Alignment.topLeft : Alignment.topRight,
            child: IconButton(
              icon: Icon(
                Icons.clear,
                color: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  if (isMenuOpen) {
                    _menuWidth = 40;
                    _menuHeight = 40;
                    isMenuOpen = false;
                  }
                  if (isNotificationOpen) {
                    _notificationWidth = 40;
                    _notificationHeight = 40;
                    isNotificationOpen = false;
                  }
                });
              },
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(18.0),
              child: isMenuOpen
                  ? Column(
                      children: [
                        menuAndNotificationItem(
                            'assets/images/account.svg', 'Melika Mehrdad'),
                        menuAndNotificationItem(
                            'assets/images/add.svg', 'Add Service'),
                        menuAndNotificationItem('assets/images/change_car.svg',
                            'Change The Vehicle'),
                        menuAndNotificationItem(
                            'assets/images/presentation.svg',
                            'A Brief Introduction'),
                        menuAndNotificationItem(
                            'assets/images/help_black.svg', 'Help'),
                        menuAndNotificationItem(
                            'assets/images/contact_us_black.svg', 'Contact Us'),
                        menuAndNotificationItem(
                            'assets/images/logout_black.svg', 'Logout'),
                      ],
                    )
                  : Column(
                      children: [
                        menuAndNotificationItem(
                            'assets/images/gift.svg', 'Your RADAR Gift'),
                        menuAndNotificationItem('assets/images/oil.svg',
                            'Change Engine Oil Tomorrow'),
                        menuAndNotificationItem('assets/images/air_filter.svg',
                            'Change Air Filter Tomorrow'),
                      ],
                    )),
        ],
      ),
    );
  }

  menuAndNotificationItem(String icon, String name) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          width: 30,
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 45,
        )
      ],
    );
  }
}
