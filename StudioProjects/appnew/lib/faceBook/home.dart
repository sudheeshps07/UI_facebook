import 'package:appnew/Buttons/assets.dart';
import 'package:appnew/faceBook/HeaderButtun.dart';
import 'package:appnew/faceBook/PostCard.dart';
import 'package:appnew/faceBook/headerbutton.dart';
import 'package:appnew/faceBook/roomsection.dart';

import 'package:flutter/material.dart';

import '../Buttons/AppbarButtun.dart';
import '../sections/sts.dart';
import 'strysection.dart';

class Home extends StatelessWidget {
  Widget thickdivider = Divider(
    thickness: 10,
    color: Colors.grey[390],
  );
  Widget thindivider = Divider(
    thickness: 1,
    color: Colors.grey[300],
  );
  Widget mediumdivider = Divider(
    thickness: 6,
    color: Colors.grey[300],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'facebook',
            style: TextStyle(
                color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            AppbarButtun(
              buttonAction: () {
                print('pressed searchbar');
              },
              buttonIcon: Icons.search_rounded,
            ),
            AppbarButtun(
                buttonIcon: Icons.message,
                buttonAction: () {
                  print('message send');
                })
          ],
        ),
        body: ListView(
          children: [
            statusSection(),
            thindivider,
            HeaderButton(buttonOne: headerButton(buttonText:'Live',
                buttonIcon: Icons.video_call,
                buttonAction:(){
              print('go to live');
                },
                buttoncolor:Colors.red),
            buttonTwo: headerButton(buttonText: 'Image', buttonIcon:Icons.photo_library, buttonAction: (){},
                buttoncolor:Colors.green),
            buttonThree: headerButton(buttonText: 'room',
                buttonIcon:Icons.video_call,
                buttonAction:(){
              print('creat room');
                },
                buttoncolor:Colors.purple),),
            mediumdivider,
            RoomSection(),
            thickdivider,
            StorySection(),
            thickdivider,
            PostCard(
              name: 'Manchester',
              avatar: muted,
              pubishTime: '5h',
              postTitle: 'Top Scorer',
              postImage: cr07,
              showBluetick: true, Commentcount: '342k', SharesCount: '112k', LikeCount: '20m',
            ),
            thickdivider,
        PostCard(
          name: 'pogba',
          avatar: pogba,
          pubishTime: '3h',
          postTitle: 'Top Assits',
          postImage: pogba,
          showBluetick: true, Commentcount: '342k', SharesCount: '112k', LikeCount: '20m'),
            thickdivider,
            PostCard(
                name: 'Bruno',
                avatar: bruno,
                pubishTime: '3h',
                postTitle: '',
                postImage: bruno,
                showBluetick: true, Commentcount: '42k', SharesCount: '12k', LikeCount: '10m'),
            thickdivider,
            PostCard(
                name: 'Yash',
                avatar: yash,
                pubishTime: '1h',
                postTitle: '',
                postImage: yash,
                showBluetick: true, Commentcount: '41k', SharesCount: '32k', LikeCount: '111m'),
            thickdivider,
            PostCard(
                name: 'wood',
                avatar: one,
                pubishTime: '1h',
                postTitle: '',
                postImage: one,
                showBluetick: false, Commentcount: '1k', SharesCount: '2k', LikeCount: '1m'),
          ],
        ),
      ),
    );
  }
}
