import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _sliderItemA = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderDemo'),
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
                Slider(
                  value: _sliderItemA,
                  onChanged: (value) {
                    setState(() {
                      _sliderItemA = value;
                    });
                  },
                  activeColor: Theme.of(context).accentColor,
                  //选中的颜色
                  inactiveColor: Theme.of(context).accentColor.withOpacity(0.3),
                  //未选中的颜色
                  min: 0.0,
                  max: 10.0,
                  divisions: 10,
                  //分割的份数
                  label: '${_sliderItemA.toInt()}', //Label取整显示
                ),
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            Text('SliderValue:$_sliderItemA'),
          ],
        ),
      ),
    );
  }
}
