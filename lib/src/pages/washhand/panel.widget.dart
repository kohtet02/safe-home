import 'package:flutter/material.dart';
import 'package:safehome/src/common/styles/common.styles.dart';
import 'package:safehome/src/pages/washhand/ticker.widget.dart';
import 'package:safehome/src/pages/washhand/togglebtn.widget.dart';

class PanelWidget extends StatefulWidget {
  @override
  _PanelWidgetState createState() => _PanelWidgetState();
}

class _PanelWidgetState extends State<PanelWidget> {

  Widget ticketText = Text(
    'You have not washed your hands for',
    style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: sm_font_size,
      color: Colors.red,
    ),
    textAlign: TextAlign.left,
  );

  Widget tipsText = Text(
    'Corona Virus Tips',
    style: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: lg_font_size,
      color: Colors.grey[700],
    ),
  );

  Container _tipsImageText(String imageStr, String label) {
    return Container(
      padding: EdgeInsets.all(0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'images/' + imageStr
                ),
              ),
            ),
          ),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: label_font_size,
              color: Colors.grey[700],
            ),
            softWrap: true,
          ),
        ],
      ),
    );
  }

  Container _panelView() {
    return Container(
      margin: EdgeInsets.only(left: 5.0, top: 0.0, right: 5.0, bottom:0.0),
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.grey[300],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(sm_padding),
            child: ticketText,
          ),
          TickerWidget(),
          Container(
            alignment: Alignment.center,
            child: tipsText,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tipsImageText('wash_hands.png', '1.Wash Your Hands'),
              _tipsImageText('no_contact_sick.png', '2.Avoid Close Contact'),
              _tipsImageText('stay_home.png', '3.Stay At Home'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tipsImageText(
                  'cover_face.png', '4.Cover Nose & Mouth\n    When Sneeze'),
              _tipsImageText(
                  'no_face_touch.png', '5.Do Not Touch Eyes,\n    Nose & Mouth'),
            ],
          ),
          ToggleBtnWidget(),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 10.0),
            child: Text(
              'Press done if you washed.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: info_font_size,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.0, top: 5.0, right: 10.0, bottom: 5.0),
                child: ButtonTheme(
                  height: btn_lg_height,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.orangeAccent[700],
                    textColor: Colors.white,
                    shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      'Done!!',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: done_font_size,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _panelView();
  }
}
