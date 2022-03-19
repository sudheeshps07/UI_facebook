import 'package:appnew/Model/catagory/category_model.dart';
import 'package:appnew/category/category_add_pop.dart';
import 'package:appnew/category/screen_category.dart';
import 'package:appnew/db/_category/_category_db.dart';
import 'package:appnew/transaction/sreen_transaction.dart';
import 'package:flutter/material.dart';

import 'Widgets_/bottom_navigation.dart';

class SreenHome extends StatelessWidget {
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  final pages = const [
    ScreenTransaction(),
    SreenCategory(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('MoneyManger'),
        centerTitle: true,
      ),
      bottomNavigationBar: MoneyManagerBottomnavgationBar(),
      body: SafeArea(
          child: ValueListenableBuilder(
            valueListenable: selectedIndexNotifier,
            builder: (BuildContext contex, int updatedIndex, _) {
              return pages[updatedIndex];
            },
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedIndexNotifier.value == 0) {
            print('transaction');
          } else {
            print('category');
            showCategoryAddpopup(context);
            //final _sample = CategoryModel(Id: DateTime
              //  .now()
                //.millisecondsSinceEpoch
                //.toString(), name: 'travel', type: CategoryType.expense);
            //CategoryDb().insertCategory(_sample);
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
