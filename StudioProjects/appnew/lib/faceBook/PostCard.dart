import 'package:appnew/Buttons/assets.dart';
import 'package:appnew/faceBook/Avatars.dart';
import 'package:appnew/faceBook/HeaderButtun.dart';
import 'package:appnew/faceBook/headerbutton.dart';
import 'package:flutter/material.dart';

import 'BlueTick.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String pubishTime;
  final String postImage;
  final String postTitle;
  final bool showBluetick;
  final String LikeCount;
  final String Commentcount;
  final String SharesCount;

  PostCard(
      {required this.avatar,
      required this.name,
      required this.pubishTime,
      required this.postTitle,
      required this.postImage,
      this.showBluetick = false,
      required this.LikeCount,
      required this.Commentcount,
      required this.SharesCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          ImageSection(),
          footerSection(),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          HeaderButton(
            buttonOne: headerButton(
                buttonText: 'like',
                buttonIcon: Icons.thumb_up_alt_outlined,
                buttonAction: () {
                  print('Liked');
                },
                buttoncolor: Colors.black12),
            buttonTwo: headerButton(
                buttonText: 'comment',
                buttonIcon: Icons.message,
                buttonAction: () {
                  print('comment this post');
                },
                buttoncolor: Colors.black12),
            buttonThree: headerButton(
                buttonText: 'share',
                buttonAction: () {
                  print('share this post');
                },
                buttoncolor: Colors.black12,
                buttonIcon: Icons.share_outlined),
          )
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                      size: 10,
                    )),
                SizedBox(
                  width: 5,
                ),
                displayText(label: LikeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: Commentcount),
                SizedBox(width: 5),
                displayText(label: 'comments'),
                SizedBox(
                  width: 5,
                ),
                displayText(label: SharesCount),
                SizedBox(width: 5),
                displayText(label: 'shares'),
                SizedBox(
                  width: 10,
                ),
                Avatars(
                  displayAvatars: one,
                  displaysts: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                  onPressed: () {
                    print('dropDown pressed');
                  },
                  icon: Icon(Icons.arrow_drop_down),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget ImageSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postImage),
    );
  }

  Widget titleSection() {
    return postTitle !=null && postTitle !=''? Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        postTitle == null ? '' : postTitle,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    ):SizedBox();
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatars(displayAvatars: avatar, displaysts: false),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          showBluetick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(pubishTime == null ? "" : pubishTime),
          SizedBox(width: 10),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print('details');
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
