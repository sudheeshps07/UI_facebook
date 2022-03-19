import 'package:flutter/material.dart';

import '../Model/catagory/category_model.dart';
import '../db/_category/_category_db.dart';
class IcomeCategorlist extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: CategoryDb().incomeCategoryList,
        builder: (BuildContext ctx, List<CategoryModel>newList, Widget?_) {
          return ListView.separated(itemBuilder: (ctx, index) {
            final category=newList[index];
            return Card(
              child: ListTile(
                title: Text('Expense Category $index'),
                trailing: IconButton(onPressed: () {
                  print('deleted');
                }, icon: Icon(Icons.delete)),
              ),
            );
          },
              separatorBuilder: (ctx, index) {
                return const SizedBox(height: 10,);
              },
              itemCount: newList.length);
        });
  }
}