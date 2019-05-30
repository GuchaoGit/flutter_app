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
  PublishSubject<String> _subject;
  String _data = 'Nothing';

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
    return 'hello world';
  }

  void onData(data) {
    setState(() {
      _data = data;
    });
  }

  @override
  void initState() {
    super.initState();
    _subject = PublishSubject();
    _subject
//        .map((value) => 'map:$value') //数据处理
//        .where((value) {
//      return value.length > 12;
//    }) //数据过滤
        .debounce((_) =>
        TimerStream(true, Duration(milliseconds: 500))) //间隔时间（数据停止一段时间后再通过）
        .listen(onData);
//    Observable<String> _observable = Observable<String>(Stream.fromIterable(['hello','Guchao']));//method1
//    Observable<String> _observable = Observable.fromFuture(fetchData());
//    Observable<String> _observable = Observable.fromIterable(['hello','Guchao']);
//    Observable<String> _observable = Observable.just('hello world');
//    Observable<String> _observable = Observable.periodic(Duration(seconds: 3),(x)=> x.toString());
//    _observable.listen(debugPrint);

//    PublishSubject<String> _subject = PublishSubject();
//    _subject.listen((data)=>debugPrint('listen 1:$data'));
//    _subject.add('Hello');
//    _subject.listen((data)=>debugPrint('listen 2:${data.toUpperCase()}'));
//    _subject.add ('guchao');
//
//    _subject.close();
//
//    BehaviorSubject<String> _behaviorSubject = BehaviorSubject();
//    _behaviorSubject.add('Hello');
//    _behaviorSubject.add ('guchao');
//    _behaviorSubject.listen((data)=>debugPrint('behavior listen 1:$data'));
//    _behaviorSubject.listen((data)=>debugPrint('behavior listen 2:${data.toUpperCase()}'));
//
//    _behaviorSubject.close();
//
//    ReplaySubject<String> _replaySubject = ReplaySubject(maxSize: 2);
//    _replaySubject.add('Hello');
//    _replaySubject.add ('guchao');
//    _replaySubject.add ('hi');
//    _replaySubject.add ('guc');
//    _replaySubject.listen((data)=>debugPrint('replay listen 1:$data'));
//    _replaySubject.listen((data)=>debugPrint('replay listen 2:${data.toUpperCase()}'));
//
//    _replaySubject.close();
  }

  @override
  void dispose() {
    super.dispose();
    _subject.close();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black,
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              '监听到的数据为：$_data',
            ),
            SizedBox(
              height: 16.0,
            ),
            TextField(
              onSubmitted: (value) {
                _subject.add('submit:$value');
              },
              onChanged: (value) {
                _subject.add('input:$value');
              },
              decoration: InputDecoration(
                labelText: '待发送的数据',
                hintText: '请输入往Observable添加的数据',
                filled: true,
                fillColor: Colors.grey[200],
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
