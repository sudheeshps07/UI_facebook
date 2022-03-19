
import 'package:appnew/Screen_home/sreen_home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MoneyManager());

class  MoneyManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "money manager app",
      home: SreenHome(),
    );
  }

}