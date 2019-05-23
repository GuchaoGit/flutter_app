import 'package:flutter/material.dart';

import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/listview_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text("hello"),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.search),
                    tooltip: "Search",
                    onPressed: null),
                IconButton(
                    icon: Icon(Icons.menu), tooltip: "more", onPressed: null),
              ],
              elevation: 0.0,
              bottom: TabBar(
                  unselectedLabelColor: Colors.black38,
                  indicatorColor: Colors.black54,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 1.0,
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(Icons.local_florist),
                    ),
                    Tab(
                      icon: Icon(Icons.local_airport),
                    ),
                    Tab(
                      icon: Icon(Icons.local_atm),
                    ),
                  ]),
          ),
            body: TabBarView(children: <Widget>[
              ListViewDemo(),
              Icon(
                Icons.local_airport,
                size: 128.0,
                color: Colors.black12,
              ),
              Icon(
                Icons.local_atm,
                size: 128.0,
                color: Colors.black12,
              ),
            ]),
            drawer: DrawerDemo(),
            bottomNavigationBar: BottomNavigationBarDemo()
        ));
  }
}
