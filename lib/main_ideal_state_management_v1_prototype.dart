import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// @observable
class Todo {
  bool completed;
  String title;

  Todo({required this.completed, required this.title});
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // @observable
  bool paidMember = false;

  // @observable
  List<Todo> todos = [
    Todo(completed: false, title: 'Todo 1'),
    Todo(completed: false, title: 'Todo 2'),
    Todo(completed: false, title: 'Todo 3'),
  ];
  // Annotating with Observable converts it to an ObservableList.

  // @onChanged(paidMember)
  void setConfig() {
    // Reinitialize variables that the premium member needs.
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text('Ideal State Management V1 20231119'),
            Expanded(
              child: PageView(
                children: [
                  ListView.builder(
                    itemBuilder: (context, index) {
                      Todo todo = todos[index];
                      return CheckboxListTile(
                        value: todo.completed,
                        onChanged: (value) {
                          todo.completed = value ?? false;
                          setState(() {});
                        },
                      );
                    },
                    itemCount: todos.length,
                  ),
                ],
              ),
            ),
            // Expanded(
            //   child: ListView.builder(
            //     itemBuilder: (context, index) {
            //       Todo todo = todos[index];
            //       return CheckboxListTile(
            //         value: todo.completed,
            //         onChanged: (value) {
            //           todo.completed = value;
            //         },
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
