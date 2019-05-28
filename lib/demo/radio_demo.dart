import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroupA = 0;
  int _radioGroupB = 0;

  void _handleRadioValueChanged(int value) {
    setState(() {
      _radioGroupA = value;
    });
  }

  void _handleRadioValueChangedB(int value) {
    setState(() {
      _radioGroupB = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('RadioGroupValue:$_radioGroupB'),
            SizedBox(
              height: 16.0,
            ),
            RadioListTile(
              value: 0,
              groupValue: _radioGroupB,
              onChanged: _handleRadioValueChangedB,
              title: Text('Option A'),
              //标题
              subtitle: Text('Decription A'),
              //子标题
              secondary: Icon(Icons.filter_1),
              //图标
              selected: _radioGroupB == 0, //是否选中
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroupB,
              onChanged: _handleRadioValueChangedB,
              title: Text('Option B'),
              subtitle: Text('Decription B'),
              secondary: Icon(Icons.filter_2),
              selected: _radioGroupB == 1,
            ),
            RadioListTile(
              value: 2,
              groupValue: _radioGroupB,
              onChanged: _handleRadioValueChangedB,
              title: Text('Option C'),
              subtitle: Text('Decription C'),
              secondary: Icon(Icons.filter_3),
              selected: _radioGroupB == 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: _radioGroupA,
                  onChanged: _handleRadioValueChanged,
                ),
                Radio(
                  value: 1,
                  groupValue: _radioGroupA,
                  onChanged: _handleRadioValueChanged,
                ),
                Radio(
                  value: 2,
                  groupValue: _radioGroupA,
                  onChanged: _handleRadioValueChanged,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
