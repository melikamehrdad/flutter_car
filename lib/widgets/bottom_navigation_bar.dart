import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Color(0xff3eb73c), width: 2),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: BottomNavigationBar(
        selectedItemColor: Color(0xff3eb73c),
        unselectedItemColor: Color(0xff666666),
        backgroundColor: Colors.transparent,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.transparent,
            icon: Icon(Icons.dashboard),
            title: Text('Dashboard'),
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(Icons.map),
              title: Text('Map')),
          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(Icons.build),
              title: Text('Services')),
          BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(Icons.sort),
              title: Text('Options')),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

