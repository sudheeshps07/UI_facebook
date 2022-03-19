import 'package:flutter/material.dart';

void main() => runApp(Newapp());

class Newapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'devolper',
      home: Scaffold(
        body: Container(
          // color: Colors.lime,
          child: Center(
            child: TextField(
              keyboardType: TextInputType.text,
              onChanged: (String numbr) {},
              // controller: TextEditingController(text: 'enter your adders'),
              decoration: InputDecoration(
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius:BorderRadius.circular(35)
                  ),
                  icon: Icon(Icons.music_note,color: Colors.pink),
                  suffixIcon:Icon(Icons.add,color: Colors.indigo,),
                  labelText: 'enter user name',
                  hintText: 'filim',
                  helperText: 'evad thanne'

              ),
            ),

          ),
        ),
      ),
    );
  }
}