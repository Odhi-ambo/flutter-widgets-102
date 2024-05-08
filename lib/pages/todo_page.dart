import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  TextEditingController myController = TextEditingController();
  TextEditingController myController1 = TextEditingController();

  String greetingMessage = "";

  void greetUser() {
    setState(() {
      greetingMessage =
          'Hello, Welcome ' + myController.text + myController1.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
            backgroundColor: Colors.amberAccent,
            title: Text(
              'Landing Page',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(greetingMessage),
                TextField(
                  controller: myController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'message1'),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: myController1,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'message2'),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: greetUser,
                  child: Text('Tap'),
                ),
              ],
            ),
          ),
        ));
  }
}
