import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(OldApp());

class OldApp extends StatelessWidget {
  ValueNotifier<int> counter = ValueNotifier(0);

  void Increment() {
    counter.value = counter.value + 1;
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('you have enter added number:'),
              ValueListenableBuilder(
                  valueListenable: counter,
                  builder: (ctx, NewValue, Widget? _) {
                    return Text("$NewValue");
                  },
                  child: Text('$counter')),


            ],

          ),
        ),

      ),

    );
  }
}
