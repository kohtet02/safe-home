import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safehome/src/services/auth.service.dart';
import 'package:safehome/src/ui/washhand.dart';
import 'package:line_icons/line_icons.dart';

AuthService appAuth = new AuthService();

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildLogo(),
            _buildFacebookLoginButton(context),
            _buildGoogleLoginButton(context),
            _buildTwitterLoginButton(context),
            _buildGuestLoginButton(context),
          ],
        ),
      ),
    );
  }

  void initiateSignIn(BuildContext context, String type) {
    appAuth.login(type).then((result) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WashHand()),
      );
    });
  }

  Container _buildLogo() {
    return Container(
      margin: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 80),
      child: Image(
        image: AssetImage('assets/graphics/logo.png'),
        height: 50.0,
        width: 200.0,
      ),
    );
  }

  Container _buildFacebookLoginButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 5, right: 16, bottom: 0),
      child: ButtonTheme(
        height: 48,
        child: RaisedButton(
          materialTapTargetSize: MaterialTapTargetSize.padded,
          onPressed: () {
            initiateSignIn(context, 'FB');
          },
          color: Color.fromRGBO(27, 76, 213, 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          textColor: Colors.white,
          child: Row(
            children: <Widget>[
              Icon(
                LineIcons.facebook,
                size: 50,
              ),
              // Image(
              //   image: AssetImage('assets/graphics/facebook.png'),
              //   height: 40,
              //   width: 40,
              // ),
              Text(
                'Login with Facebook',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildGoogleLoginButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 5, right: 16, bottom: 0),
      child: ButtonTheme(
        height: 48,
        child: RaisedButton(
          materialTapTargetSize: MaterialTapTargetSize.padded,
          onPressed: () {
            initiateSignIn(context, 'G');
          },
          color: Color.fromRGBO(66, 133, 244, 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          textColor: Colors.white,
          child: Row(
            children: <Widget>[
              Icon(
                LineIcons.google_plus,
                size: 50,
              ),
              // Image(
              //   image: AssetImage('assets/graphics/google.png'),
              //   height: 40,
              //   width: 40,
              // ),
              Text(
                'Login with Google',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildTwitterLoginButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 5, right: 16, bottom: 0),
      child: ButtonTheme(
        height: 48,
        child: RaisedButton(
          materialTapTargetSize: MaterialTapTargetSize.padded,
          onPressed: () {
            initiateSignIn(context, 'T');
          },
          color: Color.fromRGBO(29, 161, 242, 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          textColor: Colors.white,
          child: Row(
            children: <Widget>[
              Icon(
                LineIcons.twitter_square,
                size: 50,
              ),
              Text(
                'Login with Twitter',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildGuestLoginButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 5, right: 16, bottom: 0),
      child: ButtonTheme(
        height: 48,
        child: RaisedButton(
          materialTapTargetSize: MaterialTapTargetSize.padded,
          onPressed: () {
            // TODO: Create Guest User
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WashHand()),
            );
          },
          color: Colors.orangeAccent[700],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          textColor: Colors.white,
          child: Text(
            'Login as Guest',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
