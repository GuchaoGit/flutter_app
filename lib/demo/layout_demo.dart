import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          ),
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        SizedBox(
          width: 150.0,
          height: 250.0,
          child: Container(
            alignment: Alignment(1.0, 1.0), //手动设置对其
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        SizedBox(
          height: 32.0,
        ),
        SizedBox(
          width: 100.0,
          height: 100.0,
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 54, 255, 1.0),
                ])),
            child: Icon(
              Icons.brightness_2,
              color: Colors.white,
              size: 32,
            ),
          ),
        ),
        Positioned(
          right: 10,
          top: 60,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 30,
          ),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 28,
          ),
        ),
        Positioned(
          bottom: 2,
          left: 20,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 32,
          ),
        ),
        Positioned(
          bottom: 60,
          right: 50,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 10,
          ),
        ),
        Positioned(
          bottom: 60,
          right: 80,
          child: Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 20,
          ),
        ),
      ],
    );
  }
}
