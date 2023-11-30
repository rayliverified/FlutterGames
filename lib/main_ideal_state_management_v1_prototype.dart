import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// @observable
class Todo {
  String title;
  bool completed;

  Todo({
    required this.title,
    required this.completed,
  });

  @override
  String toString() => 'Todo(title: $title, completed: $completed)';
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
  List<Todo> todos = [];
  // Annotating with Observable converts it to an ObservableList.

  // @onChanged(paidMember)
  void setConfig() {
    // Reinitialize variables that the premium member needs.
  }

  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    todos = List.generate(
        1000, (index) => Todo(title: 'Todo $index', completed: false));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(focusNode);
              },
              child: Focus(
                  focusNode: focusNode,
                  canRequestFocus: true,
                  child: Text('Ideal State Management V1 20231119')),
            ),
            Expanded(
              child: PageView(
                children: [
                  ListView.builder(
                    itemBuilder: (context, index) {
                      Todo todo = todos[index];

                      if (index % 10 == 0) {
                        return SliderCheckboxListTile(
                            key: ValueKey(todo.title), todo: todo);
                      }

                      return CheckboxListTileWrapper(todo: todo);
                    },
                    itemCount: todos.length,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SliderCheckboxListTile extends StatefulWidget {
  final Todo todo;

  const SliderCheckboxListTile({super.key, required this.todo});

  @override
  State<SliderCheckboxListTile> createState() => _SliderCheckboxListTileState();
}

class _SliderCheckboxListTileState extends State<SliderCheckboxListTile> {
  // with AutomaticKeepAliveClientMixin {
  late Todo todo;
  double slider = 0;

  @override
  void initState() {
    super.initState();
    todo = widget.todo;
    print('Init Slider ${todo.title}');
  }

  @override
  void dispose() {
    print('Dispose Slider ${todo.title}');
    super.dispose();
  }

  // @override
  // bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    // super.build(context);

    return CheckboxListTile(
      value: todo.completed,
      onChanged: (value) {
        todo.completed = value ?? false;
        setState(() {});
      },
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(todo.title),
      subtitle: Slider(
          value: slider,
          onChanged: (value) {
            slider = value;
            setState(() {});
          },
          min: 0,
          max: 10,
          divisions: 10),
    );
  }
}

class CheckboxListTileWrapper extends StatefulWidget {
  final Todo todo;

  const CheckboxListTileWrapper({super.key, required this.todo});

  @override
  State<CheckboxListTileWrapper> createState() =>
      _CheckboxListTileWrapperState();
}

class _CheckboxListTileWrapperState extends State<CheckboxListTileWrapper> {
  @override
  void initState() {
    super.initState();
    print('Init ${widget.todo.title}');
  }

  @override
  void dispose() {
    print('Dispose ${widget.todo.title}');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: widget.todo.completed,
      onChanged: (value) {
        widget.todo.completed = value ?? false;
        setState(() {});
      },
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(widget.todo.title),
    );
  }
}
