import 'package:flutter/material.dart';
import 'package:safehome/src/common/components/common.app.bar.dart';
import 'package:safehome/src/common/components/common.bottom.nav.bar.dart';
import 'package:safehome/src/common/styles/common.styles.dart';
import 'package:safehome/src/pages/washhand/panel.widget.dart';

class WashHand extends StatefulWidget {
  @override
  _WashHandState createState() => _WashHandState();
}

class _WashHandState extends State<WashHand> {

  Widget title = Text(
    'Wash Your Hands?',
    style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: title_font_size,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        appBar: AppBar(),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(common_padding),
            child: title,
          ),
          PanelWidget(),
        ],
      ),
      bottomNavigationBar: CommonBottomNavBar(),
    );
  }
}
