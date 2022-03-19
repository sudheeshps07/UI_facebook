import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String title = "heloo robo";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: MySatefulWidget(),
    );
  }
}

class MySatefulWidget extends StatefulWidget {
  MySatefulWidget({Key? key}) : super(key: key);

  @override
  MySatefulWidgetState createState() => MySatefulWidgetState();
}

class MySatefulWidgetState extends State<MySatefulWidget> {
  int Selectedindex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> widgetOption = <Widget>[
    Text('home', style: optionStyle),
    Text('contact', style: optionStyle),
    Text('settings', style: optionStyle)
  ];

  void onItemtapped(int index) {
    setState(() {
      Selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('face book'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: widgetOption.elementAt(Selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add_call), label: 'contact'),
          BottomNavigationBarItem(
              icon: Icon(Icons.widgets_rounded), label: 'settings'),
        ],
        currentIndex: Selectedindex,
        selectedItemColor: Colors.white,
        onTap: onItemtapped,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
