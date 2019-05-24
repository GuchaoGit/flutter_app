import 'package:flutter/material.dart';

import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}
//GridView.builder 按需生成GridView
class GridViewBuilderDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      itemBuilder: _gridItemBuilder,
    );
  }
}

//GridView.extent 创建网格视图
class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTile(int count) {
    return List.generate(count, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          "Item $index",
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150,
      crossAxisSpacing: 16.0, //交叉轴间距
      mainAxisSpacing: 16.0, //主轴间距
//      scrollDirection: Axis.horizontal,//滚动方向
      children: _buildTile(100),
    );
  }
}

//GridView.count 创建网格视图
class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTile(int count) {
    return List.generate(count, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          "Item $index",
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3, //交叉轴数量
      crossAxisSpacing: 16.0, //交叉轴间距
      mainAxisSpacing: 16.0, //主轴间距
//      scrollDirection: Axis.horizontal,//滚动方向
      children: _buildTile(100),
    );
  }
}

//按需生成页面
class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: Theme
                    .of(context)
                    .textTheme
                    .title,
              ),
              Text(
                posts[index].author,
                style: Theme
                    .of(context)
                    .textTheme
                    .subtitle,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

//PageView 及其属性
class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
//      pageSnapping: false, //禁止回弹效果
//      reverse: true, //倒置
//      scrollDirection: Axis.vertical, //页面滚动方向
      onPageChanged: (currentPage) => debugPrint("currentPage is $currentPage"),
      controller: PageController(
        initialPage: 0, //初始页面
        keepPage: false, //是否记录用户滚动
        viewportFraction: 0.85, //页面占用比例
      ),
      children: <Widget>[
        Container(
          color: Colors.brown,
          alignment: Alignment(0, 0),
          child: Text(
            "ONE",
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0, 0),
          child: Text(
            "TWO",
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0, 0),
          child: Text(
            "THREE",
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
