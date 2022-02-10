import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/tasks_data.dart';
import 'package:todoey/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        taskTitle: Provider.of<TaskData>(context).tasks[index].name,
        isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
        checkbocCallback: ( checkboxState) {
          // setState(() {
          //   Provider.of<TaskData>(context).tasks[index].isDone = checkboxState;
          // });
        },
      );
    }, itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
