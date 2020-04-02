import 'package:flutter/material.dart';
import 'package:safehome/src/common/buttons/normal.button.dart';
import 'package:safehome/src/common/components/common.app.bar.dart';
import 'package:safehome/src/common/components/common.bottom.nav.bar.dart';
import 'package:safehome/src/common/styles/common.styles.dart';
import 'package:safehome/src/services/auth.service.dart';

AuthService appAuth = new AuthService();

class WashHand extends StatefulWidget {
  @override
  State createState() => _State();
}

class _State extends State<WashHand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: Text('Safe Home'),
        appBar: AppBar(),
      ),
      body: SingleChildScrollView(
        child: _washHandBody(),
        scrollDirection: Axis.vertical,
      ),
      bottomNavigationBar: CommonBottomNavBar(),
    );
  }

  Container _washHandBody() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(height: padding_height),
          Text(
            'Wash Your Hands?',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: title_font_size,
            ),
            textAlign: TextAlign.left,
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                borderOnForeground: true,
                color: Colors.grey[200],
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Text(
                      'You have not washed your hands for',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.red),
                      textAlign: TextAlign.left,
                    ),
                    Text('04:00:00s',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                            color: Colors.red),
                        textAlign: TextAlign.left),
                    Image(
                      image: AssetImage("assets/graphics/washhand_temp.png"),
                      height: 300.0,
                      width: 500.0,
                    ),
                    SizedBox(height: padding_height),
                    Text(
                      'Where are you now at?',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: info_font_size),
                      textAlign: TextAlign.left,
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 0, 5),
                              height: 70,
                              child: RaisedButton(
                                onPressed: () {},
                                color: Colors.blue,
                                textColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(12.0),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    print('home pressed...');
                                    appAuth.logout();
                                    Navigator.popUntil(
                                        context, ModalRoute.withName('/'));
                                  },
                                  icon: Icon(Icons.home),
                                  color: Colors.white,
                                  iconSize: icon_size,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text('Home',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: label_font_size),
                                  textAlign: TextAlign.center),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 0, 5),
                              //height: 70,
                              height: 70,
                              child: RaisedButton(
                                onPressed: () {},
                                color: Colors.blue,
                                textColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(12.0),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    print('work pressed...');
                                  },
                                  icon: Icon(Icons.work),
                                  color: Colors.white,
                                  iconSize: icon_size,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text('Work',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: label_font_size),
                                  textAlign: TextAlign.center),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 0, 5),
                              height: 70,
                              child: RaisedButton(
                                onPressed: () {},
                                color: Colors.blue,
                                textColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(12.0),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    print('outside pressed...');
                                  },
                                  icon: Icon(Icons.directions_run),
                                  color: Colors.white,
                                  iconSize: icon_size,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text('Outside',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: label_font_size),
                                  textAlign: TextAlign.center),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: padding_height),
                    Text(
                      'Press done If you washed.',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: info_font_size),
                      textAlign: TextAlign.left,
                    ),
                    NormalButton(
                      text: 'Done !!',
                      btnColor: 0xFFFF6D00,
                      minWidth: 300,
                      onPressed: () {},
                    ),
                    SizedBox(height: padding_height),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
