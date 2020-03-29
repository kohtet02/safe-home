import 'package:flutter/material.dart';
import '../../styles/AppStyles.dart';

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
      child: CircleAvatar(
        radius: circle_btn_radius,
        backgroundColor: btnColor,
        child: IconButton(
          icon: Icon(
            icon,
            color: iconColor,
            size: circle_btn_size,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
