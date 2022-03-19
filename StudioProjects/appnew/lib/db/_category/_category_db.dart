import 'package:appnew/Model/catagory/category_model.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
const CATEGORY_DB_NAME='category-database';
abstract class CategoryDbFunction {
  Future<List<CategoryModel>>getCategories();
  Future<void> insertCategory(CategoryModel value);
}

class CategoryDb implements CategoryDbFunction {
  CategoryDb._internal();

    static CategoryDb instance = CategoryDb._internal();
    factory CategoryDb(){
      return instance;
    }


  ValueNotifier<List<CategoryModel>>incomeCategoryList=ValueNotifier([]);
  ValueNotifier<List<CategoryModel>>ExpenseCategoryList=ValueNotifier([]);
  @override
  Future<void> insertCategory(CategoryModel value) async {
  final _CategoryDB= await  Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);
  await _CategoryDB.add(value);
  refreshUI();
  }

  @override
  Future<List<CategoryModel>> getCategories() async {
    final _CategoryDB= await  Hive.openBox<CategoryModel>(CATEGORY_DB_NAME);
    return _CategoryDB.values.toList();
  }
  Future<void> refreshUI()async{
    final _allCategories=await getCategories();
    incomeCategoryList.value.clear();
   await Future.forEach(_allCategories, (CategoryModel category){
     if(category.type==CategoryType.income){
       incomeCategoryList.value.add(category);
     }else{
       ExpenseCategoryList.value.add(category);
     }
   }

   );
   incomeCategoryList.notifyListeners();
   ExpenseCategoryList.notifyListeners();
  }
}
