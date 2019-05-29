import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateManagementDemoState();
  }
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //提供基本的页面结构
      appBar: AppBar(
        title: Text('StateManagementDemo'),
        elevation: 0.0,
      ),
      body: Counter(count: _count),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _count++;
          });
          debugPrint('$_count');
        },
      ),
    );
  }
}

//由父辈管理状态
class Counter extends StatelessWidget {
  final int count;

  Counter({@required this.count});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Chip(
        label: Text('$count'),
        backgroundColor: Colors.green,
      ),
    );
  }
}

