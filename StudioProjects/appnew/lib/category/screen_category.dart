import 'package:appnew/db/_category/_category_db.dart';
import 'package:flutter/material.dart';

import 'Expense.dart';
import 'Icome.dart';

class SreenCategory extends StatefulWidget {
  const SreenCategory({Key? key}) : super(key: key);

  @override
  State<SreenCategory> createState() => _SreenCategoryState();
}

class _SreenCategoryState extends State<SreenCategory>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    CategoryDb().refreshUI();
    CategoryDb().getCategories().then((value){
      print('category');
      print(value.toString());
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
          tabs: [Tab(text: 'Income'), Tab(text: 'Expens')],
        ),
          Expanded(
          child: TabBarView(
            controller: _tabController,
              children:[
                IcomeCategorlist(),
                ExpenseCategorlist(),

              ]),
        )
      ],
    );
  }
}
