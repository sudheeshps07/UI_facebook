import 'package:appnew/navigator/screen2.dart';
import 'package:flutter/material.dart';




class screenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        elevation: 0,
      ),
      body: SafeArea(

        child: ListView.separated(itemBuilder: (ctx, index) {
          return ListTile(
            title: Text('person $index'),
            leading: CircleAvatar(
              backgroundColor: Colors.red,
            ),
            onTap: (){
              Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx){
                return ScreenTwo(name :'person $index ');
              },),);
            },
          );
        },
            separatorBuilder:(ctx,index){
          return Divider();
            },
            itemCount:25,
        ),
      ),
    );
  }
}