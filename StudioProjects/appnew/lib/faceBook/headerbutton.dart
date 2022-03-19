import 'package:flutter/material.dart';
Widget headerButton(
    {required String buttonText,
      required IconData buttonIcon,
      required void Function() buttonAction,
      required Color buttoncolor}) {
  return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttoncolor,
      ),
      label: Text(buttonText));
}