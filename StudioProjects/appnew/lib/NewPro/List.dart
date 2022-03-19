
import 'package:flutter/material.dart';

import 'functionfordetails.dart';
ValueNotifier<List<StudentsDetails>>StudentListNotifier=ValueNotifier([]);


void addStudent(StudentsDetails value){
  StudentListNotifier.value.add(value);
  StudentListNotifier.notifyListeners();
  print(value.toString() );

}