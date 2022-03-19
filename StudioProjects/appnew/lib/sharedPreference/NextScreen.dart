import 'package:appnew/sharedPreference/HomeScreepre.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogOut extends StatelessWidget {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(onPressed: () {
              signOut(context);

            }, icon: Icon(Icons.exit_to_app))
          ],
          title: Text('shared preference'),
          backgroundColor: Colors.teal),
    );
  }

  signOut(BuildContext ctx) async{
    final sharedPrefs=await SharedPreferences.getInstance();
      await sharedPrefs.clear();

    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => ScreenSec()), (route) => false);
  }
}
