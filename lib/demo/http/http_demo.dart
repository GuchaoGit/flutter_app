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
//    fetchPosts().then((value) {
//      print(value);
//    }, onError: (error) {
//      print(error);
//    });
//    map2JsonTest();
  }

  void map2JsonTest() {
    final post = {
      //map类型的数据
      'title': 'hello',
      'description': 'nice to meet you.',
    };

    final postJson = json.encode(post); //Map -> JsonString
    print(postJson);
    final postJsonConverted = json.decode(postJson); //JsonString -> Map
    print(postJsonConverted is Map);

    final postModel = Post.fromJson(postJsonConverted); //Map -> Model
    print('title:${postModel.title} description:${postModel.description}');
    print(json.encode(postModel)); //Model -> JsonString
  }

  Future<List<Post>> fetchPosts() async {
    final response =
    await http.get('https://resources.ninghao.net/demo/posts.json');
//    debugPrint('${response.statusCode}');
//    debugPrint('${response.body}');
    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<Post> posts = responseBody['posts']
          .map<Post>((item) => Post.fromJson(item))
          .toList(); //把响应的数据转为自定义Dart对象
      return posts;
    } else {
      throw Exception('Failed to fetch posts.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchPosts(),
      builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshoot) {
//        print('data:${snapshoot.data}');
//        print('connectionState:${snapshoot.connectionState}');
        if (snapshoot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Text('loading...'),
          );
        }
        return ListView(
          children: snapshoot.data.map((item) {
            return ListTile(
              title: Text(item.title),
              subtitle: Text(item.author),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(item.imageUrl),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}

class Post {
  int id;
  String title;
  String description;
  String author;
  String imageUrl;

  Post(this.id, this.title, this.description, this.author,
      this.imageUrl); //构造函数

  Post.fromJson(Map json) //构造方法
      : id = json['id'],
        title = json['title'],
        description = json['description'],
        author = json['author'],
        imageUrl = json['imageUrl'];

  Map toJson() =>
      {
        'id': id,
        'title': title,
        'description': description,
        'author': author,
        'imageUrl': imageUrl
      };
}
