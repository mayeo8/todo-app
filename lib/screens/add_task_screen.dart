import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({super.key});

  String? newTextTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (newValue) {
                newTextTitle = newValue;
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextButton(
              style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Colors.lightBlueAccent),
              ),
              onPressed: () {
                if (newTextTitle == null) {
                } else {
                  Provider.of<TaskListProvider>(context, listen: false)
                      .addTask(newTextTitle!);
                  Navigator.pop(context);
                }
              },
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
