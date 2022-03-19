import 'package:flutter/material.dart';

class Avatars extends StatelessWidget {
  final String displayAvatars;
  final bool displaysts;
  final bool displayBorder;
  final double width;
  final double height;

  Avatars({required this.displayAvatars,
    required this.displaysts,
    this.displayBorder=false,
   this.height=50,
  this.width=50});

  @override
  Widget build(BuildContext context) {
    Widget Stsindicator;

    if (displaysts == true) {
      Stsindicator = Positioned(
        bottom: 0,
        right: 1,
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              color: Colors.greenAccent,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              )),
        ),
      );
    } else {
      Stsindicator = SizedBox();
    }
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border:displayBorder? Border.all(
            color: Colors.blueAccent,
            width: 3,
          ):Border()
        ),
        padding: EdgeInsets.only(left: 4, right: 4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(displayAvatars, width: width, height:height),
        ),
      ),
      Stsindicator,
    ]);
  }
}
