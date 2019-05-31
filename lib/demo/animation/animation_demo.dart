import 'package:flutter/material.dart';

class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimationDemo'),
        elevation: 0.0,
      ),
      body: AnimationDemoHome(),
    );
  }
}

class AnimationDemoHome extends StatefulWidget {
  @override
  _AnimationDemoHomeState createState() => _AnimationDemoHomeState();
}

class _AnimationDemoHomeState extends State<AnimationDemoHome>
    with TickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: Duration(milliseconds: 3000),
        //设置动画时长 1s
        vsync: this,
        value: 30.0,
        lowerBound: 30.0,
        upperBound: 100.0);

    _animationController.addListener(() {
      //添加监听
//      print('${_animationController.value}');
      setState(() {});
    });

    _animationController.addStatusListener((status) {
      print(status);
    });
//    _animationController.forward(); //播放动画
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
          icon: Icon(Icons.favorite, color: Colors.red,),
          iconSize: _animationController.value,
          onPressed: () {
            switch (_animationController.status) {
              case AnimationStatus.completed:
                _animationController.reverse();
                break;
              default:
                _animationController.forward();
            }
          }),
    );
  }
}
