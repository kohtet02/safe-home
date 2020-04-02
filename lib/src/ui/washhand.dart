import 'package:flutter/material.dart';
import 'package:safehome/src/services/auth.service.dart';
import 'package:safehome/src/ui/login.dart';
import '../common/ui/circle-button.dart';
import '../styles/AppStyles.dart';

AuthService appAuth = new AuthService();

class WashHand extends StatefulWidget {
  @override
  State createState() => _State();
}

class _State extends State<WashHand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        margin: EdgeInsets.symmetric(
            vertical: nav_margin_vert, horizontal: nave_margin_hor),
        child: Row(
          children: <Widget>[
            Container(
                width: nav_btn_width,
                child: CircleButton(
                  onPressed: () {
                    print('Logging out...');
                    appAuth.logout();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  icon: Icons.pan_tool,
                  iconColor: Colors.white70,
                  btnColor: Color(0xFFFF6D00),
                )),
            Container(
                width: nav_btn_width,
                child: CircleButton(
                  onPressed: () {
                    print('Home pressed...');
                  },
                  icon: Icons.home,
                  iconColor: Colors.white70,
                  btnColor: Color(0xFF4285F4),
                )),
            Container(
                width: nav_btn_width,
                child: CircleButton(
                  onPressed: () {},
                  icon: Icons.group_add,
                  iconColor: Colors.white70,
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
                    iconColor: Colors.white70,
                    btnColor: Color(0xFF4285F4),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
