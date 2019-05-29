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
      body: Center(
        child: Chip(
          label: Text('$_count'),
          backgroundColor: Colors.green,
        ),
      ),
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
