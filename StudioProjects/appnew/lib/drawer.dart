import 'package:flutter/material.dart';

main() => runApp(NewApp());

class NewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'draw ex',
      home: MySatefulWidget(),
    );
  }
}

class MySatefulWidget extends StatefulWidget {
  MySatefulWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyStatefulwidgetState();
}

class MyStatefulwidgetState extends State<MySatefulWidget> {
  int SelectedeIndex = 0;
  int selecteditem = 0;
  static const TextStyle OptionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  // static const List<Widget>WidgetOption = <Widget>[
  //   Text('index 0 : home',
  //       style: OptionStyle),
  //   Text('index 1: Bussiness', style: OptionStyle),
  //   Text('index 2: Settings', style: OptionStyle),
  //   Text('index 3: Exit', style: OptionStyle)
  // ];

  void itemTap(int index) {
    setState(() {
      SelectedeIndex = index;
    });
    void tapItem(int index) {
      setState(() {
        selecteditem = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(title: const Text('drwerey'), backgroundColor: Colors.green),

      body: Center(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.tealAccent),
              child:
              Text('ps', style: TextStyle(color: Colors.red, fontSize: 24)),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('message'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('settings'),
            ),
            ListTile(leading: Icon(Icons.phone), title: Text('contact'))
          ],
        ),
      ),
    );
  }
}