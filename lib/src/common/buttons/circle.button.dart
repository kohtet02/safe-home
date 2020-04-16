import 'package:flutter/material.dart';
import 'package:safehome/src/common/styles/common.styles.dart';

class CircleButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double borderRadius;
  final Color btnColor;
  final Color iconColor;
  final IconData icon;

  CircleButton({
    this.onPressed,
    this.borderRadius = btn_borderRadius,
    this.icon,
    this.iconColor,
    this.btnColor = Colors.white70,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: btnColor,
        ),
        child: IconButton(
          icon: Icon(
            icon,
          ),
          onPressed: () {},
          color: iconColor,
          iconSize: circle_btn_size,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
