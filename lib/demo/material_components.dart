import 'package:flutter/material.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(null),
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
              title: 'FloatingActionButton', page: FloatingActionButtonDemo()),
        ],
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      elevation: 0.0,
      backgroundColor: Colors.black54,
      //按钮颜色
      shape: BeveledRectangleBorder(
        //改变悬浮按钮的形状为正方形
        borderRadius: BorderRadius.circular(30.0), //菱形
      ),
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
      floatingActionButton: _floatingActionButtonExtended,
    );
  }
}

//ListView item 封装
class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return page;
        }));
      },
    );
  }
}
