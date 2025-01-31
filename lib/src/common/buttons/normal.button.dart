import 'package:flutter/material.dart';
import 'package:safehome/src/common/styles/common.styles.dart';
import 'package:safehome/src/common/consts/common.consts.dart';

class NormalButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  final double borderRadius;
  final int btnColor;
  final String icon;
  final double minWidth;

  NormalButton({
    this.onPressed,
    this.borderRadius = btn_borderRadius,
    this.text = default_btn_name,
    this.icon,
    this.textStyle,
    this.btnColor = 0xFF4267B2,
    this.minWidth = btn_width,
    Key key,
  })  : assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ButtonTheme(
        minWidth: minWidth,
        height: btn_height,
        buttonColor: Color(btnColor),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        child: new RaisedButton(
          onPressed: onPressed,
          color: Color(btnColor),
          child: Padding(
            padding: const EdgeInsets.only(
                left: txt_left_padding, right: txt_right_padding),
            child: Text(
              text,
              style: textStyle ??
                  TextStyle(
                    fontSize: sm_font_size,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
