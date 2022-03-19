import 'package:flutter/material.dart';

void main() => runApp(AppNew());

class AppNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wasssup',
      home: MyhomePage(),
    );
  }
}

class MyhomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StateHome();
}

class StateHome extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('wassup'),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('person $index'),
              subtitle: Text('messages'),
              leading: CircleAvatar(
                backgroundColor: Colors.limeAccent,
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg'),
              ),
              trailing: Icon(Icons.phone),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
          itemCount: 30,
        ),
      ),
    );
  }
}
