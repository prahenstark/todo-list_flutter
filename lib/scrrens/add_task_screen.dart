import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AddTaskScreen extends StatefulWidget {

  Function CallbackListener;
  AddTaskScreen(this.CallbackListener);

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState(CallbackListener);

}

class _AddTaskScreenState extends State<AddTaskScreen> {

  Function addTaskCallback;
  _AddTaskScreenState(this.addTaskCallback);

  String newTaskTitle= " ";
  TextEditingController textEditingController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 900.0,
      color: Color(0xff757575),
      child: Container(
        //height: 900.0,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            )
        ),
        child:SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                controller:  textEditingController,
                onChanged: (newText) {
                  print(newText);
                  //newTaskTitle = newText;
                },
              ),
              SizedBox(height: 20.0,
              ),
              FlatButton(
                color: Colors.lightBlueAccent,
                child: Text('Add',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  print('Button clicked');
                  addTaskCallback(this.textEditingController.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class AddTaskScreen extends StatelessWidget {
//
//   final Function addTaskCallback;
//
//   AddTaskScreen(this.addTaskCallback);
//    String newTaskTitle= " ";
//    TextEditingController textEditingController=TextEditingController();
//   @override
//
// }
