import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      body: Theme(data: ThemeData(), child: ThemeDemo()),
      body: Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.black),
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFieldDemo(),
              TextField(),
            ],
          ),
        ),
      ),
    );
  }
}

//TextField 文本字段
class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose(); //关闭资源，避免浪费
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
//    textEditingController.text='hello';
    textEditingController.addListener(() {
      debugPrint('input ${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
//      onChanged: (value){//内容有变化则执行
//        debugPrint('input $value');
//      },
      onSubmitted: (value) {
        //点击完成时回调
        debugPrint('submit $value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',
        hintText: 'Enter the post title',
//        border: InputBorder.none,//去除边框
//        border: OutlineInputBorder(),//添加四周边框
        filled: true,
        //带背景颜色的输入框
        fillColor: Colors.grey[200],
      ),
    );
  }
}

//主题修改展示
class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
