import 'package:flutter/foundation.dart';
import 'package:todoey/models/tasks.dart';

class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

}