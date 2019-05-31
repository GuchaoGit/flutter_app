import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class HttpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpDemo'),
        elevation: 0.0,
      ),
      body: HttpDemoHome(),
    );
  }
}

class HttpDemoHome extends StatefulWidget {
  @override
  _HttpDemoHomeState createState() => _HttpDemoHomeState();
}

class _HttpDemoHomeState extends State<HttpDemoHome> {
  @override
  void initState() {
    super.initState();
//    fetchPost();
    map2JsonTest();
  }

  void map2JsonTest() {
    final post = { //map类型的数据
      'title': 'hello',
      'description': 'nice to meet you.',
    };

    final postJson = json.encode(post);
    print(postJson);
    final postJsonConverted = json.decode(postJson);
    print(postJsonConverted is Map);
  }

  Future fetchPost() async {
    final response = await http.get(
        'https://resources.ninghao.net/demo/posts.json');
    debugPrint('${response.statusCode}');
    debugPrint('${response.body}');
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
