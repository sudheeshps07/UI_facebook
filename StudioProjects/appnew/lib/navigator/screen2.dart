import 'package:appnew/navigator/screen3.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  final String name;

  const ScreenTwo({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder:(contex){
                    return ScreenThree();
                  }));
                },
                child: Text(name),
              )
            ],
          ),
        ),
      ),
    );
  }
}
