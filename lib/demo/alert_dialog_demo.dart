import 'package:flutter/material.dart';

enum Action { Cancel, OK }

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = 'Nothing';

  Future _openAlertDialog() async {
    final act = await showDialog(
        context: context,
        barrierDismissible: false, //禁止点击空白处关闭对话框
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('AlertDialog'),
            content: Text('Are you sure about this? '),
            actions: <Widget>[
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.pop(context, Action.Cancel);
                },
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.pop(context, Action.OK);
                },
              ),
            ],
          );
        });
    switch (act) {
      case Action.OK:
        _choice = 'OK';
        break;
      case Action.Cancel:
        _choice = 'Cancel';
        break;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You choice is :$_choice'),
            SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: _openAlertDialog,
                  child: Text('Open AlertDialog'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
