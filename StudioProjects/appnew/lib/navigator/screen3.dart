import 'package:flutter/material.dart';
class ScreenThree extends StatelessWidget {  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.yellow,
     appBar: AppBar(
       backgroundColor: Colors.greenAccent,
       title:const Text('screen three'),
     ),
     body: Center(
       child: ElevatedButton(


         onPressed: () {
           Navigator.of(context).pop();
         },
         child: null,),
     ),
   );
  }
}