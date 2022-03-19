import 'package:appnew/sharedPreference/splashScreen.dart';
import 'package:flutter/material.dart';
const Savekeyname ='user login';


//import 'sharedPreference/NextScreen.dart';
void main() => runApp(SharedPrefer());

class SharedPrefer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'new',
      home: Splashscreen(),
    );
  }
}