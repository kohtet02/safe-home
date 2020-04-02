import 'package:flutter/material.dart';
import 'package:safehome/src/common/styles/common.styles.dart';
import 'package:safehome/src/common/consts/common.consts.dart';

class NormalIconButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  final double borderRadius;
  final int btnColor;
  final String icon;

  NormalIconButton({
    this.onPressed,
    this.borderRadius = btn_borderRadius,
    this.text = default_btn_name,
    this.icon,
    this.textStyle,
    this.btnColor = 0xFF4267B2,
    Key key,
  })  : assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: btn_width,
        height: btn_height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(this.borderRadius),
          color: Color(btnColor),
        ),
        child: RawMaterialButton(
          onPressed: onPressed,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: Container(
                  child: Image(
                    image: AssetImage(
                      icon,
                    ),
                  ),
                  height: icon_width,
                  width: icon_height,
                ),
                onPressed: null,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: txt_left_padding, right: txt_right_padding),
                child: Text(
                  text,
                  style: textStyle ??
                      TextStyle(
                        // default to the application font-style
                        fontSize: common_font_size,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
