import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewFeaturesPage extends StatefulWidget {
  @override
  _NewFeaturesPageState createState() => _NewFeaturesPageState();
}

class _NewFeaturesPageState extends State<NewFeaturesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                    icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 16,),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
              listItemWhite('assets/images/vehicle.svg', 'Select The Vehicle', 'Ferrari 812 GTS'),
              listItemBlack('assets/images/manage.svg', 'Manage User', 'Jack Bardu'),
              listItemWhite('assets/images/presentation.svg', 'A Brief Introduction', 'Quick Application Training'),
              listItemBlack('assets/images/help.svg', 'Help', 'Application Document'),
              listItemWhite('assets/images/fre_question.svg', 'Frequently Ask Questions', 'Find Your Answer Quickly'),
              listItemBlack('assets/images/contact_us.svg', 'Contact Us', '05137117'),
              listItemWhite('assets/images/commants.svg', 'Commands', 'Get The Position'),
              listItemBlack('assets/images/events.svg', 'Events', 'Periodic Repair Notification'),
              listItemWhite('assets/images/language.svg', 'Select Language', 'English'),
              listItemBlack('assets/images/logout.svg', 'Log Out', 'Please Don\'t Do This :('),
            ],
          ),
        ),
      ),
    );
  }

  listItemWhite(String file, String heading, String title){
    return Container(
      height: 50,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(18.0,8.0,8.0,8.0),
      padding: const EdgeInsets.only(left: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
          color: Colors.white
      ),
      child: Row(
        children: [
          SvgPicture.asset(file,width: 35,height: 35,),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(heading,
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text(title,
                  style: TextStyle(color: Colors.black,fontSize: 12),),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Icon(Icons.arrow_forward_ios,color: Colors.black,),
          ),
        ],
      ),
    );
  }

  listItemBlack(String file, String heading, String title){
    return Container(
      height: 50,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(1.0,1.0,0.0,1.0),
      margin: const EdgeInsets.fromLTRB(18.0,8.0,8.0,8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
        color: Colors.grey,
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 30),
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
          color: Colors.black,
        ),
        child: Row(
          children: [
            SvgPicture.asset(file,width: 35,height: 35,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(heading,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Text(title,
                    style: TextStyle(color: Colors.white,fontSize: 12),),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
            ),
          ],
        ),
      ),
    );
  }


}
