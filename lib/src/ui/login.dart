import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safehome/src/common/ui/common-icon-button.dart';
import 'package:safehome/src/common/ui/common-button.dart';
import 'home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const padding = 25.0;
    const btn_padding = 15.0;
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(height: 100.0),
          Image(
            image: AssetImage("assets/graphics/logo.png"),
            height: 50.0,
            width: 200.0,
          ),
          SizedBox(height: 100.0),
          CommonIconButton(
              text: 'Login with Facebook',
              btnColor: 0xFF4267B2,
              icon: 'assets/graphics/facebook.png',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              }),
          SizedBox(height: btn_padding),
          CommonIconButton(
            onPressed: () {},
            text: 'Login with Google',
            btnColor: 0xFF4285F4,
            icon: 'assets/graphics/google.png',
            //icon: 'assets/graphics/facebook.png',
          ),
          SizedBox(height: btn_padding),
          CommonIconButton(
            text: 'Login with Twitter',
            btnColor: 0xFF2189F3,
            // icon: 'assets/graphics/twitter.png',
            icon: 'assets/graphics/icons8-twitter-100.png',
          ),
          SizedBox(height: padding),
          Container(
            child: Text('or',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                )),
          ),
          SizedBox(height: padding),
          CommonButton(
            text: 'Login As Guest',
            btnColor: 0xFFFF6D00,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
          )
        ],
      ),
    );
  }
}
