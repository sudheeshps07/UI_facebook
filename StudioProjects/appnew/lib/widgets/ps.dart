import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "am robot",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 6,
                margin: EdgeInsets.all(10),
                // padding: EdgeInsets.all(150),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(10, 10),
                      ),
                    ]),
                child: Center(
                    child: Text(
                  "ps",
                  style: TextStyle(color: Colors.white),
                ))),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add_call), label: 'contact'),
          BottomNavigationBarItem(
              icon: Icon(Icons.widgets_rounded), label: 'settings'),
        ],
      ),
    );
  }
}
