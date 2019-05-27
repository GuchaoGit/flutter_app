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
          ListItem(title: 'ButtonDemo', page: ButtonDemo()),
        ],
      ),
    );
  }
}

//Button
class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey, //溅墨动画颜色
          textColor: Theme
              .of(context)
              .accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          //溅墨动画颜色
          textColor: Theme
              .of(context)
              .accentColor,
        ),
      ],
    );
    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          //修改button样式
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              buttonColor: Colors.blue, //按钮的颜色
              textTheme: ButtonTextTheme.primary,
//              shape: BeveledRectangleBorder(//直角矩形
//                borderRadius: BorderRadius.circular(5.0),
//              )
              shape: StadiumBorder(),
            ),
          ),
          child: RaisedButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey, //溅墨动画颜色
            elevation: 12.0, //阴影效果
//            textColor: Theme.of(context).accentColor,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          color: Colors.greenAccent,
          //设置背景色
          elevation: 12.0,
          //阴影效果
          //溅墨动画颜色
          textColor: Theme
              .of(context)
              .accentColor,
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
          ],
        ),
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          ],
        ),
      ),
    );
  }
}

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
