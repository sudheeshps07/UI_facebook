import 'package:appnew/sharedPreference/stsr.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';
import 'HomeScreepre.dart';

void main() => runApp(Splashscreen());

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    ScreenSec();
    gotoLogin();
    super.initState();
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  Future<void>gotoLogin()async{
    await Future.delayed(Duration( seconds:4));
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
      return ScreenSec();
    }));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Center(
          child: Text(
            'PS',
            style: TextStyle(
                color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
  Future<void>CheckLog()async{
    final sharedprefers=await SharedPreferences.getInstance();
   final usreLogid= sharedprefers.getBool(Savekeyname);
   if(usreLogid==null || usreLogid==false){
     ScreenSec();
   }
  }
}
