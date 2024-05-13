import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ['Go to the gym', false],
      ['Do some coding', false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("toDoList");
  }

  void updateDatabase() {
    _myBox.put('toDoList', toDoList);
  }
}
