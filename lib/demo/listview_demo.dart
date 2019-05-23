import 'package:flutter/material.dart';
import 'package:flutter_app/model/post.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return ItemPost(posts[index]);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: posts.length, itemBuilder: _listItemBuilder);
  }
}

class ItemPost extends StatelessWidget {
  final Post post;

  ItemPost(this.post);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(post.imageUrl),
          SizedBox(
            height: 16.0,
          ),
          Text(
            post.title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            post.author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}
