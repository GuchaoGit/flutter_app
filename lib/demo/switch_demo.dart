import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemA = false;
  bool _switchItemB = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(
              value: _switchItemB,
              onChanged: (value) {
                setState(() {
                  _switchItemB = value;
                });
              },
              title: Text('Switch'),
              subtitle: Text('Switch Description'),
              secondary:
                  Icon(_switchItemB ? Icons.visibility : Icons.visibility_off),
              selected: _switchItemB, //激活状态的颜色
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  _switchItemA ? '😀' : '😭',
                  style: TextStyle(fontSize: 32.0),
                ),
                Switch(
                  value: _switchItemA,
                  onChanged: (value) {
                    setState(() {
                      _switchItemA = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
