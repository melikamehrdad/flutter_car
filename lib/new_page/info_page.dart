import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InformationPage extends StatefulWidget {
  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Color(0xff020303),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 14,),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  Center(child: Text('Status',style: TextStyle(fontSize: 25, color: Color(0xff020303)),)),
                  Container(width: 40, height: 40, margin: EdgeInsets.all(8),)
                ],
              ),
              SizedBox(height: 60,),
              Stack(
                children: [
                  Center(
                    child: Image.asset('assets/images/car_top.png', width: 200,height: 350,),
                  ),
                  Positioned(
                    top: 50,
                    left: 20,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset('assets/images/radio2.svg', width: 35, height: 35,),
                        SizedBox(width: 5,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('GPS', style: TextStyle(color: Color(0xff020303)),),
                            SizedBox(height: 2,),
                            Text('90%',style: TextStyle(fontSize: 20, color: Color(0xff688967)),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 250,
                    left: 30,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset('assets/images/dish2.svg', width: 35, height: 35,),
                        SizedBox(width: 5,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('GSM', style: TextStyle(color: Color(0xff020303)),),
                            SizedBox(height: 2,),
                            Text('80%',style: TextStyle(fontSize: 20, color: Color(0xff688967)),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 50,
                    right: 20,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset('assets/images/battery2.svg', width: 35, height: 35,),
                        SizedBox(width: 5,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('BATTERY', style: TextStyle(color: Color(0xff020303)),),
                            SizedBox(height: 2,),
                            Text('13.7',style: TextStyle(fontSize: 20, color: Color(0xff688967)),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 250,
                    right: 30,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset('assets/images/speed2.svg', width: 35, height: 35,),
                        SizedBox(width: 5,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Speed', style: TextStyle(color: Color(0xff020303)),),
                            SizedBox(height: 2,),
                            Text('0',style: TextStyle(fontSize: 20, color: Color(0xff688967)),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Positioned(
                bottom: 0,
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height/4,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Color(0xff020303),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Column(
                          children: [
                            Text('Ferrari 812 GTS',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 20,),
                            Container(
                              height: 40,
                              width: 200,
                              child: Center(child: Text('Select Car', style: TextStyle(fontSize: 18, color: Colors.white),),),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [Color(0xff4DCE00), Color(0xff4DCE00)]
                                )
                              ),
                            ),
                          ],
                        ),
                      SizedBox(width: 40,),
                      // Expanded(
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Text('Kilometres', style: TextStyle(color: Colors.white),),
                      //       SizedBox(height: 2,),
                      //       Text('49000 KM/H',style: TextStyle(color: Color(0xff688967), fontSize: 18),),
                      //       SizedBox(height: 20,),
                      //       Text('Gas', style: TextStyle(color: Colors.white),),
                      //       SizedBox(height: 2,),
                      //       Text('30 L',style: TextStyle(color: Color(0xff688967), fontSize: 18),),
                      //     ],
                      //   ),
                      // )
                    ],
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
