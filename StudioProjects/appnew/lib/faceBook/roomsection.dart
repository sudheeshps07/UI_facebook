import 'package:appnew/Buttons/assets.dart';
import 'package:appnew/faceBook/Avatars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          Container(
            padding: EdgeInsets.only(left: 5,right: 5),
            child: OutlineButton.icon(
              shape: StadiumBorder(),
              onPressed: () {
               print( 'room created');
              },
              icon: Icon(
                Icons.video_call,
                color: Colors.red,
              ),
              label: Text(
                'creat \nRoom',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          Avatars(displayAvatars: muted, displaysts:true),
          Avatars(displayAvatars: one,displaysts: true),
          Avatars(displayAvatars: three,displaysts: true,),
          Avatars(displayAvatars: cr07,displaysts: true),
          Avatars(displayAvatars: yash,displaysts: true),
          Avatars(displayAvatars: pogba,displaysts: true),
          Avatars(displayAvatars: cr07,displaysts: true),
          Avatars(displayAvatars: cr07,displaysts: true),
          Avatars(displayAvatars: cr07,displaysts: true),
          Avatars(displayAvatars: cr07,displaysts: true),



        ],
      ),
    );



  }
}
