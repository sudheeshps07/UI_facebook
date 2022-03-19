  import 'package:flutter/material.dart';

main() => runApp(NewApp());

class NewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'alert', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StateHome();
}

class StateHome extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alerter'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Center(
          child: RaisedButton(onPressed: () {  },),
          // RaisedButton(
          //   onPressed: () {
          //     return showDialog(context: context,
          //       builder: (BuildContext context) =>
          //           AlertDialog(
          //             title: Text('Exit'),
          //             content: Text('do u want to exit'),
          //             actions: <widget>[
          //               FlatButton(
          //                 onPressed: () {
          //                   Navigator.of(ctx).pop();
          //                 },
          //                 child: Text('ok'),
          //               )
          //             ],
          //           ),
          //     ),
          //
          //   },
          // ),
        ),
      ),
    );
  }
}
