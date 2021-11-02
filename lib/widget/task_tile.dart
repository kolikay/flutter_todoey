// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      this.longPrassCallBack});

  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final longPrassCallBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPrassCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        onChanged: (newvalue) {
          checkboxCallback(newvalue);
        },
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
      ),
    );
  }
}
// 


// class TaskCheckBox extends StatelessWidget {
//   const TaskCheckBox({required this.isChecked, this.toogleCheckBoxState});

//   final bool isChecked;
//   final toogleCheckBoxState;

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
