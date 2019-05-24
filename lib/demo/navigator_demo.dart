import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                onPressed: () {
//                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/home');
                },
                child: Text("Home")),
            FlatButton(
//                onPressed: () {
//                  Navigator.of(context).push(
//                    MaterialPageRoute(builder: (BuildContext context) {
//                      return Page('About');
//                    }),
//                  );
//                },
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Text("About")),
          ],
        ),
      ),
    );
  }
}

//关于界面
class Page extends StatelessWidget {
  final String title;

  Page(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
