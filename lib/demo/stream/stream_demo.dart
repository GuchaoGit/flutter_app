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
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 3));
    return 'hello world';
  }

  void onData(String data) {
    debugPrint('$data');
  }

  @override
  void initState() {
    super.initState();
    //创建stream
    debugPrint('Create a stream.');
    Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    //添加监听
    debugPrint('Start listening on the stream.');
    _streamDemo.listen(onData);
    debugPrint('Initialize completed.');
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
