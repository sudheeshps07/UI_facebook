import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenTransaction extends StatelessWidget {
  const ScreenTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (ctx, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text(
                  '12 dec',
                  textAlign: TextAlign.center,
                ),
                radius: 50,
              ),
              title: Text('1000'),
              subtitle: Text('travel'),
            ),
          );
        },
        separatorBuilder: (ctx, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: 30);
  }
}
