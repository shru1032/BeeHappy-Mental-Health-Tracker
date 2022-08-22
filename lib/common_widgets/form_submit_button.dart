import 'package:flutter/material.dart';
import 'package:mental_health/common_widgets/custom_raised_button.dart';

class FormSubmitButton extends CustomRaisedButton{
  FormSubmitButton({
    required String text,
    required VoidCallBack onPressed,
  }) : super(
    child: Text(
      text,
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    height: 44,
    color: Color(0xff16697a),
    onPressed: onPressed,
  );
}