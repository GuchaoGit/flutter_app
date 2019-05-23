import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerDemo();
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _author = '暂无';
  final String _title = '吕布与貂蝉';

  @override
  Widget build(BuildContext context) {
    return Text(
      "《$_title》 -- $_author. 冬季的徐州难得有这样的好天气，太阳很早就升起了。虽然是清晨却一点也不冷，只有吕布确感到寒气逼人，也难怪今天是他和心爱的人貂蝉诀别的日子。他把要向曹操要说的话，想了又想。这时哐当门开了，两个刀斧手进来稍一施礼，朗声到“奉丞相令，今日送将军上路”。吕布知道说也无益，就点点头算是回礼。阔步走出牢门。",
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: '你好',
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 18.0,
            fontWeight: FontWeight.w100,
          ),
          children: [
            TextSpan(
              text: 'Flutter',
              style: TextStyle(
                fontSize: 26.0,
                fontStyle: FontStyle.italic,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ]),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://resources.ninghao.org/images/say-hello-to-barry.jpg"),
            alignment: Alignment.topCenter,
//            repeat: ImageRepeat.repeatY,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.indigoAccent[400].withOpacity(0.6),
                BlendMode.hardLight)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),
//            color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25,
                  spreadRadius: 6,
                ),
              ],
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ),
              shape: BoxShape.rectangle,
//              gradient: RadialGradient(
//                  colors:[
//                    Color.fromRGBO(7, 102, 255, 1.0),
//                    Color.fromRGBO(3, 28, 128, 1.0),
//                  ] ),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
