import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class RxDartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RxDartDemo"),
        elevation: 0.0,
      ),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  @override
  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
    return 'hello world';
  }

  @override
  void initState() {
    super.initState();
//    Observable<String> _observable = Observable<String>(Stream.fromIterable(['hello','Guchao']));//method1
    Observable<String> _observable = Observable.fromFuture(fetchData());
//    Observable<String> _observable = Observable.fromIterable(['hello','Guchao']);
//    Observable<String> _observable = Observable.just('hello world');
//    Observable<String> _observable = Observable.periodic(Duration(seconds: 3),(x)=> x.toString());
    _observable.listen(debugPrint);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
