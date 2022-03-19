import 'package:appnew/NewPro/List.dart';
import 'package:appnew/NewPro/functionfordetails.dart';
import 'package:flutter/material.dart';

class AddStudentsWidget extends StatelessWidget {
  final nameController = TextEditingController();
  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'name'
            ),

          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: ageController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "age"),
          ),
          ElevatedButton.icon(onPressed:(){
            onaddStudentButton();
          }, icon:Icon(Icons.add), label:Text('Add Details'))
        ],
      ),
    );
  }

  Future<void> onaddStudentButton() async {
    final name = nameController.text.trim();
    final Age = ageController.text.trim();
    if (name == Age) {
      return;
    }
    print('$name $Age');
    final details=StudentsDetails(name: name, Age: Age);
    addStudent(details);
  }
}
