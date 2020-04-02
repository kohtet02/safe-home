import 'package:flutter/material.dart';
import 'package:safehome/src/common/ui/common-button.dart';

class WashHand extends StatefulWidget {
  @override
  State createState() => _State();
}

class _State extends State<WashHand> {
  static const double icon_size = 40;
  static const double info_font_size = 24;
  static const double padding_height = 10;
  static const double label_font_size = 12;
  static const double title_font_size = 36;
  @override
  Widget build(BuildContext context) {
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
                                  onPressed: () {},
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
                                  onPressed: () {},
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
                                  onPressed: () {},
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
                    CommonButton(
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
