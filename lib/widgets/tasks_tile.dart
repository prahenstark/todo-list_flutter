import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function  checkbocCallback;

  const TaskTile({this.isChecked,this.taskTitle, this.checkbocCallback});

  // void checkboxCallback(bool checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkbocCallback
      ),
    );
  }
}




