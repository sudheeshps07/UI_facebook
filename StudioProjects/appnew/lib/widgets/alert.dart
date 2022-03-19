import 'package:flutter/material.dart';

void main() => runApp(AppNew());

class AppNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'king',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StatePage();
}

class StatePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('alert box'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('show alert box'),
          onPressed: () {
            showAlertDialog(context);

            // AlertDialog(
            //   title: Text('welocm'),
            //   content: Text('we welcome you'),
            //   actions: [
            //     FlatButton(
            //       textColor: Colors.pink,
            //       onPressed: (){},
            //       child: Text("no"),
            //     ),
            //     FlatButton(onPressed:(){}, child:Text('yes'),textColor: Colors.limeAccent,)
            //   ],
            // );
          },
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    //create button
    Widget okButton = FlatButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text("Ok"),
    );
    Widget cancelButton = FlatButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text("Cancel"),
    );
    //create Dialog
    dynamic alertDialog = AlertDialog(
      title: Text("Welcome"),
      content: Text("This is small example of alert dialog"),
      actions: [
        okButton,
        cancelButton,
      ],
    );
    //show dialog
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
