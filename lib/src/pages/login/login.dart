import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:safehome/src/services/auth.service.dart';
import 'package:safehome/src/pages/washhand/washhand.dart';
import 'package:safehome/src/common/styles/common.styles.dart';

AuthService appAuth = new AuthService();

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildLogo(),
            _buildLoginButton(context, 'FB', 'Login With Facebook', Colors.indigo[800], LineIcons.facebook_official),
            _buildLoginButton(context, 'G', 'Login With Google', Colors.blue[600], LineIcons.google_plus),
            _buildLoginButton(context, 'T', 'Login With Twitter', Colors.lightBlue[400], LineIcons.twitter_square),
            _buildLoginButton(context, 'Guest', 'Login As Guest', Colors.orangeAccent[700], null),
          ],
        ),
      ),
    );
  }

  void initiateSignIn(BuildContext context, String type) {
    if (type == 'Guest') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WashHand()),
      );
    } else {
      appAuth.login(type).then((result) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WashHand()),
        );
      });
    }
  }

  Container _buildLogo() {
    return Container(
      margin: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 80),
      child: Image.asset(
        'images/logo.png',
        width: logo_width,
        height: logo_height,
      ),
    );
  }

  Container _buildLoginButton(BuildContext context, String btnType, String label, Color btnColor, IconData iconType) {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 5, right: 16, bottom: 0),
      child: ButtonTheme(
        height: btn_height,
        child: RaisedButton(
          materialTapTargetSize: MaterialTapTargetSize.padded,
          onPressed: () {
            initiateSignIn(context, btnType);
          },
          color: btnColor,
          textColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: iconType != null ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconType,
                size: icon_size,
              ),
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: login_btn_font_size,
                ),
              ),
            ],
          ) : Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: login_btn_font_size,
            ),
          ),
        ),
      ),
    );
  }
}
