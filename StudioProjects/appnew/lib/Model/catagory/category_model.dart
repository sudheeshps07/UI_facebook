import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'category_model.g.dart';

@HiveType(typeId:2)
enum CategoryType {
  @HiveField(4)
  income,
  @HiveField(5)
  expense,
}

@HiveType(typeId: 1)
class CategoryModel {
  @HiveField(0)
  final String Id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final bool isDeleted;
  @HiveField(3)
  final CategoryType type;

  CategoryModel(
      {required this.Id,
      required this.name,
      this.isDeleted = false,
      required this.type});
  @override
  String toString() {
    return'$name $type';
  }
}
