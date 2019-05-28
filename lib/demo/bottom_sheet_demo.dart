import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();
  String _option = 'Nothing';

  //底部滑动窗口
  _openBottomSheet() {
    _bottomSheetScaffoldKey.currentState
        .showBottomSheet((BuildContext context) {
      return BottomAppBar(
        child: Container(
          height: 60,
          padding: EdgeInsets.all(8),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_outline),
              SizedBox(
                width: 16.0,
              ),
              Text('01:30 / 03:30'),
              Expanded(
                child: Text(
                  'Fix you -Coldplay',
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Future _openModalBottomSheet() async {
    final String option = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            padding: EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('Option A'),
                  onTap: () {
                    Navigator.pop(context, 'A');
                  },
                ),
                ListTile(
                  title: Text('Option B'),
                  onTap: () {
                    Navigator.pop(context, 'B');
                  },
                ),
                ListTile(
                  title: Text('Option C'),
                  onTap: () {
                    Navigator.pop(context, 'C');
                  },
                ),
              ],
            ),
          );
        });
    setState(() {
      _option = option == null ? _option : option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'ModalBottomSheet choice is : $_option',
              style: TextStyle(color: Colors.green),
            ),
            FlatButton(
              child: Text('Open ModalBottomSheet'),
              onPressed: _openModalBottomSheet,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('Open BottomSheet'),
                  onPressed: _openBottomSheet,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
