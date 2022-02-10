import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/tasks_data.dart';
import 'package:todoey/scrrens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //builder: (context) => TaskData(),
      create: (BuildContext context) {  },
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
