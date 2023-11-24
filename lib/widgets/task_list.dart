import 'package:flutter/material.dart';
import 'package:todo/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskListProvider>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.task[index];
            return GestureDetector(
              onDoubleTap: () {
                taskData.deleteTask(task);
                const snackBar = SnackBar(
                  content: Text('Task deleted successfully'),
                  backgroundColor: Colors.black,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkBoxCallback: (value) {
                  taskData.updateTask(task);
                },
              ),
            );
          },
          itemCount: taskData.task.length,
        );
      },
    );
  }
}
