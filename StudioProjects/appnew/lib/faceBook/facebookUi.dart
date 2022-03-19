import 'package:flutter/material.dart';

//import 'faceBook/home.dart';
import 'home.dart';


void main()=>runApp(FaceBook());

class FaceBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'facebook',
      home: Home(),

    );
  }
}