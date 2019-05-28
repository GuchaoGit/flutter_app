import 'package:flutter/material.dart';

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
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          //溅墨动画颜色
          textColor: Theme.of(context).accentColor,
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
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
    final Widget outlineButtonDemo = Row(
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
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            borderSide: BorderSide(
              //描边效果
              color: Colors.blue,
            ),
            splashColor: Colors.grey,
            //溅墨动画颜色
            textColor: Colors.black,
            highlightedBorderColor: Colors.blueGrey,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          color: Colors.greenAccent,
          //溅墨动画颜色
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final fixedWithButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 160.0,
          child: OutlineButton.icon(
            icon: Icon(Icons.add),
            label: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            color: Colors.greenAccent,
            //溅墨动画颜色
            textColor: Theme.of(context).accentColor,
          ),
        ),
      ],
    );
    final expandedWidthButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton.icon(
            icon: Icon(Icons.add),
            label: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            color: Colors.greenAccent,
            //溅墨动画颜色
            textColor: Theme.of(context).accentColor,
          ),
        ),
      ],
    );

    final buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
            ),
          ),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton.icon(
                icon: Icon(Icons.add),
                label: Text('Button'),
                onPressed: () {},
                splashColor: Colors.grey,
                color: Colors.greenAccent,
                //溅墨动画颜色
                textColor: Theme.of(context).accentColor,
              ),
              OutlineButton.icon(
                icon: Icon(Icons.add),
                label: Text('Button'),
                onPressed: () {},
                splashColor: Colors.grey,
                color: Colors.greenAccent,
                //溅墨动画颜色
                textColor: Theme.of(context).accentColor,
              ),
            ],
          ),
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
            outlineButtonDemo,
            fixedWithButton,
            expandedWidthButton,
            buttonBarDemo,
          ],
        ),
      ),
    );
  }
}
