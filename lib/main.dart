import 'package:flutter/material.dart';
import 'package:flutter_app/demo/state/state_management_demo.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'demo/animation/animation_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/bloc/bloc_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/form_demo.dart';
import 'demo/http/http_demo.dart';
import 'demo/i18n/i18n_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/material_components.dart';
import 'demo/navigator_demo.dart';
import 'demo/rxdart/rxdart_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/stream/stream_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //设置地区和语言 不设置则跟随系统
//      locale: Locale('en', 'US'),
//      localeResolutionCallback:
//          (Locale local, Iterable<Locale> supportedLocales) {
//        return Locale('en', 'US');
//      },
      //i18n配置
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate, //Material 组件的本地化字符串
        GlobalWidgetsLocalizations.delegate, //定义文字方向
      ],
      supportedLocales: [
        //设置支持的语言
        Locale('en', 'US'),
        Locale('zh', 'CN'),
      ],

      debugShowCheckedModeBanner: false,
//      home: NavigatorDemo(),
      initialRoute: '/i18n',
      routes: {
        '/': (context) => NavigatorDemo(),
        '/about': (context) => Page("About"),
        '/home': (context) => Home(),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
        '/state-manangement': (context) => StateManagementDemo(),
        '/stream': (context) => StreamDemo(),
        '/rxdart': (context) => RxDartDemo(),
        '/bloc': (context) => BlocDemo(),
        '/http': (context) => HttpDemo(),
        '/animation': (context) => AnimationDemo(),
        '/i18n': (context) => I18nDemo(),
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Text("hello"),
              centerTitle: true,
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
                    Tab(
                      icon: Icon(Icons.view_quilt),
                    ),
                  ]),
            ),
            body: TabBarView(children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
              LayoutDemo(),
//              ViewDemo(),
              SliverDemo(),
            ]),
            drawer: DrawerDemo(),
            bottomNavigationBar: BottomNavigationBarDemo()));
  }
}
