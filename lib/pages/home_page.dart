import 'package:flutter/material.dart';
import 'package:flutter_widgets_102/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('To Do'),
      ),
      body: ListView(
        children: [
          TodoTile(),
        ],
      ),
    );
  }
}
