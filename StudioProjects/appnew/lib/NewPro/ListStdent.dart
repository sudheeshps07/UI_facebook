import 'package:appnew/NewPro/List.dart';
import 'package:appnew/NewPro/functionfordetails.dart';

import 'package:flutter/material.dart';

class ListStudentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: StudentListNotifier,
      builder:
          (BuildContext ctx, List<StudentsDetails> StudentList, Widget? child) {
        return ListView.separated(
            itemBuilder: (ctx, index) {
              final data = StudentList[index];
              return ListTile(
                title: Text(data.name),
                subtitle: Text(data.Age),
              );
            },
            separatorBuilder: (ctx, index) {
              return Divider();
            },
            itemCount: StudentList.length);
      },
    );
  }
}
