import 'package:flutter/material.dart';

import 'counter_action_button.dart';
import 'counter_bloc_demo.dart';

class BlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BlocDemo'),
        elevation: 0.0,
      ),
      body: CounterHome(),
      floatingActionButton: CounterActionButton(),
    );
  }
}
