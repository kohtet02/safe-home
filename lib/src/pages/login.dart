import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safehome/src/services/auth.service.dart';
import 'package:safehome/src/pages/washhand.dart';
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
        child: RaisedButton.icon(
          materialTapTargetSize: MaterialTapTargetSize.padded,
          onPressed: () {
            initiateSignIn(context, 'G');
          },
          color: Colors.indigo[800],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          textColor: Colors.white,
          icon: Icon(
            LineIcons.facebook_official,
            size: 50,
          ),
          label: Text(
            'Login with Facebook',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
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
        child: RaisedButton.icon(
          materialTapTargetSize: MaterialTapTargetSize.padded,
          onPressed: () {
            initiateSignIn(context, 'G');
          },
          color: Colors.blue[600],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          textColor: Colors.white,
          icon: Icon(
            LineIcons.google_plus,
            size: 50,
          ),
          label: Text(
            'Login with Google',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
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
        child: RaisedButton.icon(
          materialTapTargetSize: MaterialTapTargetSize.padded,
          onPressed: () {
            initiateSignIn(context, 'T');
          },
          color: Colors.lightBlue[400],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          textColor: Colors.white,
          icon: Icon(
            LineIcons.twitter_square,
            size: 50,
          ),
          label: Text(
            'Login with Twitter',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
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
