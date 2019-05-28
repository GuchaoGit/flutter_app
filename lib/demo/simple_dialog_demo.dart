import 'dart:async';

import 'package:flutter/material.dart';

enum Option { A, B, C }

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  String _choice = 'Nothing';

  Future _openSimpleDialog() async {
    final option = await showDialog(
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('SimpleDialog'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('Option A'),
              onPressed: () {
                Navigator.pop(context, Option.A);
              },
            ),
            SimpleDialogOption(
              child: Text('Option B'),
              onPressed: () {
                Navigator.pop(context, Option.B);
              },
            ),
            SimpleDialogOption(
              child: Text('Option C'),
              onPressed: () {
                Navigator.pop(context, Option.C);
              },
            ),
          ],
        );
      },
      context: context,
    );
    String choice = _choice;
    switch (option) {
      case Option.A:
        choice = 'A';
        break;
      case Option.B:
        choice = 'B';
        break;
      case Option.C:
        choice = 'C';
        break;
    }
    setChoiceState(choice);
  }

  setChoiceState(String value) {
    setState(() {
      _choice = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('You choice is : $_choice'),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_list_numbered),
        onPressed: _openSimpleDialog,
      ),
    );
  }
}
