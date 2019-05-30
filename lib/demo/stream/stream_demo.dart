import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  //实现暂停、恢复、取消监听
  StreamSubscription<String> _subscription;

  //控制Stream
  StreamController<String> _streamController;

  StreamSink _streamSink;
  String _data = '...';

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
//    throw('Something happened');
    return 'hello world';
  }

  void onData(String data) {
    setState(() {
      _data = data;
    });
    debugPrint('$data');
  }

  void onDataTwo(String data) {
    debugPrint('onDataTwo: $data');
  }

  void onError(error) {
    debugPrint('Error:$error.');
  }

  void onDone() {
    debugPrint('Done !.');
  }

  @override
  void initState() {
    super.initState();
    //创建stream
    debugPrint('Create a stream.');
//    Stream<String> _streamDemo = Stream.fromFuture(fetchData());
//    _streamController = StreamController<String>();
    _streamController = StreamController.broadcast(); //可被多次订阅
    _streamSink = _streamController.sink;
    //添加监听
    debugPrint('Start listening on the stream.');
//    _subscription =
//        _streamDemo.listen(onData, onError: onError, onDone: onDone);
    _subscription = _streamController.stream
        .listen(onData, onError: onError, onDone: onDone); //订阅一
    _streamController.stream
        .listen(onDataTwo, onError: onError, onDone: onDone); //订阅二
    debugPrint('Initialize completed.');
  }

  _addDataToStream() async {
    debugPrint('Add data Stream');
    String data = await fetchData();
//    _streamController.add(data);//method 1
    _streamSink.add(data); //method 2 使用Sink往Stream添加数据
  }

  _pauseStream() {
    debugPrint('Pause Stream');
    _subscription.pause();
  }

  _resumeStream() {
    debugPrint('Resume Stream');
    _subscription.resume();
  }

  @override
  void dispose() {
    super.dispose();
    _streamController.close();
  }

  _cancelStream() {
    debugPrint('Cancel Stream');
    _subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            Text('$_data'),
            StreamBuilder(
              initialData: '...', //初始值
              stream: _streamController.stream,
              builder: (context, snapshot) {
                return Text('${snapshot.data}');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('add'),
                  onPressed: _addDataToStream,
                ),
                FlatButton(
                  child: Text('pause'),
                  onPressed: _pauseStream,
                ),
                FlatButton(
                  child: Text('resume'),
                  onPressed: _resumeStream,
                ),
                FlatButton(
                  child: Text('cancel'),
                  onPressed: _cancelStream,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}