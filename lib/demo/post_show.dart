import 'package:flutter/material.dart';

import '../model/post.dart';

//详情页
class PostShow extends StatelessWidget {
  final Post post;

  PostShow({
    @required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${post.title}',
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.network(post.imageUrl),
                Positioned.fill(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      //添加溅墨动画效果
                      splashColor: Colors.white.withOpacity(0.3),
                      highlightColor: Colors.white.withOpacity(0.6),
                      onTap: () {},
                    ),
                  ),
                )
              ],
            ),
//          AspectRatio(
//            aspectRatio: 16 / 9,
//            child: Image.network(post.imageUrl),
//          ),
            Container(
              padding: EdgeInsets.all(16.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "${post.title}",
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    "${post.author}",
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "${post.description}",
                    style: Theme.of(context).textTheme.body1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
