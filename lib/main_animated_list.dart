import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animated List',
      home: AnimatedListSample(),
    );
  }
}

class AnimatedListSample extends StatefulWidget {
  @override
  _AnimatedListSampleState createState() => _AnimatedListSampleState();
}

class _AnimatedListSampleState extends State<AnimatedListSample> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  List<String> _items = List.generate(10, (index) => 'Item ${index + 1}');

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final String item = _items.removeAt(oldIndex);
      _items.insert(newIndex, item);

      _listKey.currentState!.removeItem(
        oldIndex,
        (context, animation) => _buildItem(item, animation),
        duration: const Duration(milliseconds: 300),
      );

      _listKey.currentState!
          .insertItem(newIndex, duration: const Duration(milliseconds: 300));
    });
  }

  Widget _buildItem(String item, Animation<double> animation) {
    return SizeTransition(
      key: ValueKey(item),
      sizeFactor: animation,
      child: Card(
        child: ListTile(
          title: Text(item),
          key: ValueKey<String>(item),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated List')),
      body: ReorderableListView(
        key: _listKey,
        onReorder: _onReorder,
        children: _items
            .map((item) => _buildItem(item, AlwaysStoppedAnimation<double>(1)))
            .toList(),
      ),
    );
  }
}
