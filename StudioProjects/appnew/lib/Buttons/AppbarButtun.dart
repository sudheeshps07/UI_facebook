import 'package:flutter/material.dart';

class AppbarButtun extends StatelessWidget {
  final IconData? buttonIcon;
  final void Function() buttonAction;
  final Color iconColor;

  AppbarButtun({ required this.buttonIcon, required this.buttonAction, this.iconColor=Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.grey[250]),
      child: IconButton(
        icon: Icon(buttonIcon),
        color: Colors.grey,
        iconSize: 25,
        onPressed:buttonAction,
      ),
    );
  }
}
