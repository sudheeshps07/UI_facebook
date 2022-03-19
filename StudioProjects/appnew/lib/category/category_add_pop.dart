import 'package:appnew/Model/catagory/category_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ValueNotifier<CategoryType>selectedCategory = ValueNotifier(CategoryType.income);

Future<void> showCategoryAddpopup(BuildContext context) async {
  final _nameEditingController=TextEditingController();
  showDialog(
      context: context,
      builder: (ctx) {
        return SimpleDialog(title: const Text('Add category'), children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _nameEditingController,
              decoration: const InputDecoration(
                  hintText: "category Name", border: OutlineInputBorder()),
            ),
          ),
          //  Radio(value: value, groupValue: groupValue, onChanged: onChanged)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(

              children: [
                RadioButton(title: 'income', type: CategoryType.income),
                RadioButton(title: 'expense', type: CategoryType.expense)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
               final _name=_nameEditingController.text;
               if (_name.isEmpty){
                 return;
               }
               final _type=selectedCategory.value;
               CategoryModel(Id:DateTime.now().millisecondsSinceEpoch.toString(), type:_type,name: _name );
              },
              child: Text('add'),
            ),
          ),
        ]);
      });
}

class RadioButton extends StatelessWidget {
  final String title;
  final CategoryType type;

  RadioButton({ required this.title, required this.type});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ValueListenableBuilder(valueListenable: selectedCategory,
            builder: (BuildContext ctx, CategoryType NewCategory, Widget?_) {
              return Radio<CategoryType>(
                value: type, groupValue: selectedCategory.value,
                onChanged: (value) {
                  selectedCategory.value = value!;
                  selectedCategory.notifyListeners();
                },);
            }),

        Text(title),
      ],
    );
  }
}
