import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    //title: 'newApp',
    home: PageOne(),
  ));
}
class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // debugShowCheckedModeBanner: false,
      //home: Scaffold(
      appBar: AppBar(
        title: Text('hello'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(CreatRoute());
          },
          child: Text('go to page 2'),
        ),
      ),
    );

  }
}

Route CreatRoute() {
  return PageRouteBuilder(
      pageBuilder: (ctx, animation, secondaryAnimation) => PageTwo(),
      transitionsBuilder: (ctx, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;
        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      });
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page2'),
      ),
      body: Center(
        child: Text('wellcome to page2'),
      ),
    );
  }
}
