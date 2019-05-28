import 'package:flutter/material.dart';

//FloatingActionButton BottomAppBar
class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      elevation: 0.0,
      backgroundColor: Colors.black54,
      //按钮颜色
//      shape: BeveledRectangleBorder(
//        //改变悬浮按钮的形状为正方形
//        borderRadius: BorderRadius.circular(30.0), //菱形
//      ),
    );

    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: () {},
      icon: Icon(Icons.add),
      elevation: 0.0,
      label: Text('add'),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //设置悬浮按钮位置
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60.0,
          color: Colors.black54,
        ),
        shape: CircularNotchedRectangle(), //留出悬浮窗口的位置
      ),
    );
  }
}
