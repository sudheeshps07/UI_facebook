import 'package:flutter/material.dart ';

main() => runApp(NewApp());

class NewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'rotatebox',
      theme: ThemeData(primarySwatch: Colors.green),
      home: NewHome(),
    );
  }
}

class NewHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NewHomeState();
}

class NewHomeState extends State<NewHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text('rotater'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: RotatedBox(
          quarterTurns: 5,
          child: const Text('mone'),
        ),
      ),
    );
  }
}