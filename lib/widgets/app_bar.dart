import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  MyAppBar(this.leadingIcon);

  final IconData leadingIcon;

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.black26,
      title: Text('Melika Mehrdad', style: TextStyle(color: Color(0xff3eb73c)),),
      leading: IconButton(
        icon: Icon(
          leadingIcon,
          color: Colors.white,
        ),
      ),
      actions: [
        Container(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 30,
            ))
      ],
    );
  }
}
