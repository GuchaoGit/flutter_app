import 'package:flutter/material.dart';
import 'package:flutter_app/model/post.dart';

import 'post_show.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return ItemPost(posts[index], index: index,);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: posts.length, itemBuilder: _listItemBuilder);
  }
}

class ItemPost extends StatelessWidget {
  final Post post;
  final int index;

  ItemPost(this.post, {this.index = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(post.imageUrl, fit: BoxFit.cover,),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                post.title,
                style: Theme
                    .of(context)
                    .textTheme
                    .title,
              ),
              Text(
                post.author,
                style: Theme
                    .of(context)
                    .textTheme
                    .subhead,
              ),
              SizedBox(
                height: 16.0,
              ),
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell( //添加溅墨动画效果
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.6),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PostShow(post: post)));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
