import 'package:flutter/material.dart';

import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
//            title: Text("四大名著"),
//            pinned: true,//固定界面顶部
            floating: true, //悬浮 移动就显示
            expandedHeight: 178.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Hello 四大名著",
                style: TextStyle(
                  fontSize: 15.0,
                  letterSpacing: 3,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              background: Image.network(
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558694031237&di=4561171afc0801cc5a662872fc246883&imgtype=0&src=http%3A%2F%2Fimg.mp.itc.cn%2Fupload%2F20161001%2Fa4cdbf15887a4742a30597121f8e128d_th.jpeg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8), //内边距
              sliver: SliverListDemo(),
            ),
          ),
        ],
      ),
    );
  }
}

//SliverGrid
class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 0.8, //视图显示的比例
      ),
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Container(
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}

//SliverList
class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: 32.0,
            ),
            child: Material(
              borderRadius: BorderRadius.circular(12.0), //有效  但对内部小部件无效
              shadowColor: Colors.yellow.withOpacity(0.6),
              elevation: 12.0,
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(
                      posts[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 20.0,
                    left: 20.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          posts[index].title,
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        Text(
                          posts[index].author,
                          style: TextStyle(fontSize: 13.0, color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}
