import 'package:flutter/material.dart';
import 'package:safehome/src/common/buttons/circle.button.dart';
import 'package:safehome/src/common/styles/common.styles.dart';

class CommonBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(
        vertical: nav_margin_vert,
        horizontal: nave_margin_hor,
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: nav_btn_width,
            child: CircleButton(
              onPressed: () {},
              icon: Icons.pan_tool,
              iconColor: Colors.white,
              btnColor: Colors.orangeAccent[700],
            ),
          ),
          Container(
            width: nav_btn_width,
            child: CircleButton(
              onPressed: () {},
              icon: Icons.home,
              iconColor: Colors.white,
              btnColor: Colors.blue,
            ),
          ),
          Container(
            width: nav_btn_width,
            child: CircleButton(
              onPressed: () {},
              icon: Icons.group_add,
              iconColor: Colors.white,
              btnColor: Colors.blue,
            ),
          ),
          Container(
            width: nav_btn_width,
            child: CircleAvatar(
              radius: nav_btn_width,
              backgroundColor: Colors.blueAccent,
              child: CircleButton(
                onPressed: () {},
                icon: Icons.share,
                iconColor: Colors.white,
                btnColor: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
