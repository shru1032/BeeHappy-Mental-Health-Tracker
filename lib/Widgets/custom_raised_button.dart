import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton ({required this.child, required this.color, this.borderRadius: 6.0, this.height: 60.0, required this.onPressed});
  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallBack onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        child: child,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
typedef VoidCallBack = void Function();

