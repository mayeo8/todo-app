import 'package:flutter/material.dart';

//there are local and global state which means values of ui element variable are used in different
//places across the app in global state while in local state they are used in only one class
class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;
  final ValueChanged<bool?> checkBoxCallback;

  const TaskTile(
      {super.key,
      required this.taskTitle,
      required this.isChecked,
      required this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle!,
          style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null,
            color: Colors.deepPurple,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.deepPurple,
          value: isChecked,
          onChanged: checkBoxCallback,
        ));
  }
}
