import 'package:flutter/material.dart';
import 'package:safehome/src/common/buttons/circle.button.dart';
import 'package:safehome/src/common/styles/common.styles.dart';
import 'package:safehome/src/pages/washhand.dart';

class Home extends StatefulWidget {
  @override
  State createState() => _State();
}

class _State extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        titleSpacing: -10.0,
        title: const Text('Safe Home'),
        backgroundColor: Colors.cyan[900],
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_circle),
            tooltip: 'Profile',
            iconSize: profile_icon_size,
            onPressed: () {
              //openPage(context);
            },
          ),
        ],
      ),

      // body: Padding(
      //   // child: Text(
      //   //   'This is the hand wash page',
      //   //   style: TextStyle(fontSize: 24),
      //   // ),
      //   padding: const EdgeInsets.all(16.0),
      //   child: WashHand(),
      // ),
      body: SingleChildScrollView(
        child: WashHand(),
        scrollDirection: Axis.vertical,
      ),

      //Navigation button
      bottomNavigationBar: Container(
        height: 50,
        margin: EdgeInsets.symmetric(
            vertical: nav_margin_vert, horizontal: nave_margin_hor),
        child: Row(
          children: <Widget>[
            Container(
                width: nav_btn_width,
                child: CircleButton(
                  onPressed: () {},
                  icon: Icons.pan_tool,
                  iconColor: Colors.white,
                  btnColor: Color(0xFFFF6D00),
                )),
            Container(
                width: nav_btn_width,
                child: CircleButton(
                  onPressed: () {},
                  icon: Icons.home,
                  iconColor: Colors.white,
                  btnColor: Color(0xFF4285F4),
                )),
            Container(
                width: nav_btn_width,
                child: CircleButton(
                  onPressed: () {},
                  icon: Icons.group_add,
                  iconColor: Colors.white,
                  btnColor: Color(0xFF4285F4),
                )),
            Container(
              width: nav_btn_width,
              child: CircleAvatar(
                  radius: nav_btn_width,
                  backgroundColor: Colors.blueAccent,
                  child: CircleButton(
                    onPressed: () {},
                    icon: Icons.share,
                    iconColor: Colors.white,
                    btnColor: Color(0xFF4285F4),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
