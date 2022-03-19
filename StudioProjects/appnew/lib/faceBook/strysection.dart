import 'package:appnew/Buttons/assets.dart';
import 'package:appnew/faceBook/Storiees.dart';
import 'package:flutter/material.dart';
class StorySection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Container (

       height: 250,
       child: ListView(
         scrollDirection: Axis.horizontal,
         children: [
           StoryCard(labelText: 'Add to story', avatar:one, story: one,
           creatStorySts: true,displayBorder: true,
           ),
           StoryCard(labelText: 'manchester', avatar:one, story: one,
               creatStorySts: false,displayBorder: true),
           StoryCard(labelText: 'player', avatar:one, story: one,
               creatStorySts: false,displayBorder: true),
           StoryCard(labelText: 'topplayer', avatar:one, story: one,
               creatStorySts: false,displayBorder: true,),
           StoryCard(labelText: 'mid fielder', avatar:one, story: one,
               creatStorySts: false,displayBorder: true),
           StoryCard(labelText: 'forword', avatar:one, story: one,
               creatStorySts: false,displayBorder: true),
           StoryCard(labelText: 'defence', avatar:one, story: one,
               creatStorySts: false,displayBorder: true),


         ],
       ),
     );
  }

}