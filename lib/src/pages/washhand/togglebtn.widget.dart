import 'package:flutter/material.dart';
import 'package:safehome/src/common/styles/common.styles.dart';

class ToggleBtnWidget extends StatefulWidget {
  @override
  _ToggleBtnWidgetState createState() => _ToggleBtnWidgetState();
}

class _ToggleBtnWidgetState extends State<ToggleBtnWidget> {
  Color homeBtnColor = Colors.blue;
  Color workBtnColor = Colors.grey;
  Color outsideBtnColor = Colors.grey;

  Color _getBtnColor(String label) {
    switch (label) {
      case 'Home':
        return homeBtnColor;
        break;
      case 'Work':
        return workBtnColor;
        break;
      case 'Outside':
        return outsideBtnColor;
        break;
      default:
        return Colors.blue;
        break;
    }
  }

  void toggleBtnClick(String label) {
    switch (label) {
      case 'Home':
        setState(() {
          homeBtnColor = Colors.blue;
          workBtnColor = Colors.grey;
          outsideBtnColor = Colors.grey;
        });
        break;
      case 'Work':
        setState(() {
          homeBtnColor = Colors.grey;
          workBtnColor = Colors.blue;
          outsideBtnColor = Colors.grey;
        });
        break;
      case 'Outside':
        setState(() {
          homeBtnColor = Colors.grey;
          workBtnColor = Colors.grey;
          outsideBtnColor = Colors.blue;
        });
        break;
      default:
    }
  }

  Container _buildToggleBtn(String label, Icon iconType) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: _getBtnColor(label),
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              icon: iconType,
              onPressed: () {
                toggleBtnClick(label);
              },
              color: Colors.white,
              iconSize: icon_size,
              alignment: Alignment.center,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: label_font_size,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey[700]),
      ),
      child: Column(
        children: [
          Text(
            'Where are you now at?',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: lg_font_size,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildToggleBtn('Home', Icon(Icons.home)),
                _buildToggleBtn('Work', Icon(Icons.work)),
                _buildToggleBtn('Outside', Icon(Icons.directions_run)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}