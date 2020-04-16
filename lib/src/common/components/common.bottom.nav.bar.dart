import 'package:flutter/material.dart';
import 'package:safehome/src/common/buttons/circle.button.dart';
import 'package:safehome/src/common/styles/common.styles.dart';

class CommonBottomNavBar extends StatelessWidget {

  Container _buildNavButton(IconData iconType, Color navBtnColor) {
    return Container(
      width: nav_btn_width,
      child: CircleButton(
        onPressed: () {},
        icon: iconType,
        iconColor: Colors.white,
        btnColor: navBtnColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.symmetric(
        vertical: nav_margin_vert,
        horizontal: nave_margin_hor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavButton(Icons.pan_tool, Colors.orangeAccent[700]),
          _buildNavButton(Icons.home, Colors.blue),
          _buildNavButton(Icons.group_add, Colors.blue),
          _buildNavButton(Icons.share, Colors.blue),
        ],
      ),
    );
  }
}
