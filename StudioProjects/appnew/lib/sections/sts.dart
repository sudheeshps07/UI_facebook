import 'package:appnew/faceBook/Avatars.dart';
import 'package:flutter/material.dart';
import '../Buttons/assets.dart';

class statusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: (Avatars(displayAvatars: muted, displaysts: false,)),

      title: TextFormField(
        decoration: const InputDecoration(
          // border: OutlineInputBorder(),
          hintText: 'whats on your mind ? ',
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
