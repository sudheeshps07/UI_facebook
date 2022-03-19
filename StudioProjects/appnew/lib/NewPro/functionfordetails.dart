import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'functionfordetails.g.dart';

@HiveType(typeId: 1)
class StudentsDetails {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String Age;

  StudentsDetails({required this.name, required this.Age});
}
