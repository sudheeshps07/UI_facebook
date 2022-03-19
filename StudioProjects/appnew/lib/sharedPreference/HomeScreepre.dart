import 'package:appnew/sharedPreference/NextScreen.dart';
import 'package:appnew/sharedPreference/stsr.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class ScreenSec extends StatelessWidget {
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(controller: userController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'user name'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'password'),
                    enabled:true,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    checkLogin(context);
                  },
                  child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }

  void checkLogin(BuildContext ctx) async{
    final username = userController.text;
    final password = passwordController.text;
    if (username == password) {
      final sharedPrefs=await SharedPreferences.getInstance();
      await sharedPrefs.setBool(Savekeyname, true);

         Navigator.push(ctx, MaterialPageRoute(builder: (ctx){
           return LogOut();
         }),);

    } else {
      ScaffoldMessenger.of(ctx).showSnackBar(
          SnackBar(content: Text('pasword doesnot macthed'),));
    }
  }
}
