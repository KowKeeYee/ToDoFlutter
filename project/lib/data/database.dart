import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase{

  List toDoList = [];


  //run this method if this is the 1st time ever opening this app
  void createInitialData(){
    //reference our box
    var _myBox = Hive.box('mybox');
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  //load the data from database
  void loadData(){
    var _myBox = Hive.box('mybox');
    toDoList = _myBox.get(("TODOLIST"));
  }

  //update the database
  void updateDatabase(){
    var _myBox = Hive.box('mybox');
    _myBox.put("TODOLIST", toDoList);
  }
}