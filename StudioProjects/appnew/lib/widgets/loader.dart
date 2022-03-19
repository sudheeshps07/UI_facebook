import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String title = "heloo robo";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('loader'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              backgroundColor: Colors.red,
              valueColor: AlwaysStoppedAnimation(Colors.deepPurple),
              strokeWidth: 15,
            ),
            SizedBox(
              height: 200,
            ),
            LinearProgressIndicator(
              backgroundColor: Colors.green,
              valueColor: AlwaysStoppedAnimation(Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
