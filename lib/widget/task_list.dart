// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, import_of_legacy_library_into_null_safe, dead_code

import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widget/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var provider = Provider.of<TaskData>(context);
    return ListView.builder(
      itemBuilder: (context, index) {
        final todo = Provider.of<TaskData>(context, listen: false);
        return TaskTile(
            isChecked: todo.task[index].isDone,
            taskTitle: todo.task[index].name,
            checkboxCallback: (checkBoxState) {
              todo.upDateTask(todo.task[index]);
            });
      },
      itemCount: Provider.of<TaskData>(context).taskCount,
    );
  }
}
// isChecked: Provider.of<TaskData>(context).task[index].isDone,
// taskTitle: Provider.of<TaskData>(context).task[index].name,