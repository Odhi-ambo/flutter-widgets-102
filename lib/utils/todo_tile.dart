import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        child: Text('code in flutter'),
        decoration: BoxDecoration(color: Colors.yellowAccent),
      ),
    );
  }
}
