import 'package:flutter/material.dart';


main() => runApp(Newapp());

class Newapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.music_note,color:Colors.limeAccent)),
                Tab(icon: Icon(Icons.music_video,color: Colors.deepOrange,)),
                Tab(icon: Icon(Icons.camera,color:Colors.red)),
                Tab(icon: Icon(Icons.email,color: Colors.pink,)),
              ],
            ),
            title: Text('icon class'),
            backgroundColor: Colors.greenAccent,
          ),
          body:TabBarView(
            children: [
              Icon(Icons.music_note,size:100),
              Icon(Icons.music_video,size: 100,),
              Icon(Icons.camera,size: 100,),
              Icon(Icons.email,size: 100,)
            ],
          ),
          bottomNavigationBar:BottomNavigationBar(
            items:const<BottomNavigationBarItem> [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.add_call), label: 'contact'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.widgets_rounded), label: 'settings'),
            ],


          ),
        ),
      ),
    );
  }
}
