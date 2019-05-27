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
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

//Form 使用
class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username, password;
  bool autoValidate = false; //自动验证-关闭
  void submitRegisterForm() {
    if (registerFormKey.currentState.validate()) //执行验证
        {
      registerFormKey.currentState.save(); //执行TextFormField onSaved()
      debugPrint("username = $username , password = $password");
      Scaffold.of(context).showSnackBar(
          SnackBar(content: Text("Registering..."))); //SnackBar 底部提示栏
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }

  String validatorUsername(value) {
    if (value.isEmpty) {
      return 'Username is required.';
    }
    return null;
  }

  String validatorPassword(value) {
    if (value.isEmpty) {
      return 'Password is required.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Username', helperText: ''),
            onSaved: (value) {
              username = value;
            },
            validator: validatorUsername,
            autovalidate: autoValidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password', helperText: ''),
            onSaved: (value) {
              password = value;
            },
            validator: validatorPassword,
            autovalidate: autoValidate,
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme
                  .of(context)
                  .accentColor,
              child: Text("Register", style: TextStyle(color: Colors.white)),
              elevation: 0.0, //去掉阴影
              onPressed: submitRegisterForm,
            ),
          ),
        ],
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
