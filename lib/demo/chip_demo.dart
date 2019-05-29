import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = [
    'apple',
    'banana',
    'Lemon',
  ];
  List<String> _selected = [];
  String _action = 'Nothing';
  String _choice = 'Lemon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ChipUseDemo(),
            Divider(
              color: Colors.green,
              height: 2, //宽度
              indent: 4, //缩进
            ),
            WrapDemo(),
            Divider(
              color: Colors.green,
              height: 2, //宽度
              indent: 4, //缩进
            ),
            Wrap(
              spacing: 8.0,
              children: _tags.map((tag) {
                return Chip(
                  label: Text(tag),
                  onDeleted: () {
                    setState(() {
                      _tags.remove(tag);
                    });
                  },
                );
              }).toList(),
            ),
            Divider(
              color: Colors.green,
              height: 2, //宽度
              indent: 4, //缩进
            ),
            Container(
              width: double.infinity,
              child: Text('ActionChip:$_action'),
            ),
            Wrap(
              spacing: 8.0,
              children: _tags.map((tag) {
                return ActionChip(
                  label: Text(tag),
                  onPressed: () {
                    setState(() {
                      _action = tag;
                    });
                  },
                );
              }).toList(),
            ),
            Divider(
              color: Colors.green,
              height: 2, //宽度
              indent: 4, //缩进
            ),
            Container(
              width: double.infinity,
              child: Text('FilterShip:${_selected.toString()}'),
            ),
            Wrap(
              spacing: 8.0,
              children: _tags.map((tag) {
                return FilterChip(
                  label: Text(tag),
                  selected: _selected.contains(tag),
                  onSelected: (value) {
                    setState(() {
                      if (!value) {
                        _selected.remove(tag);
                      } else {
                        _selected.add(tag);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            Divider(
              color: Colors.green,
              height: 2, //宽度
              indent: 4, //缩进
            ),
            Container(
              width: double.infinity,
              child: Text('ChoiceChip:$_choice'),
            ),
            Wrap(
              spacing: 8.0,
              children: _tags.map((tag) {
                return ChoiceChip(
                  label: Text(tag),
                  selected: _choice == tag,
                  selectedColor: Colors.black,
                  onSelected: (value) {
                    setState(() {
                      _choice = tag;
                    });
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            _tags = [
              'apple',
              'banana',
              'Lemon',
            ];
            _selected = [];
            _choice = 'Lemon';
          });
        },
      ),
    );
  }
}

//自动换行小部件
class WrapDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 15.0,
      children: <Widget>[
        Chip(
          label: Text('Life'),
        ),
        Chip(
          label: Text('Sunset'),
          backgroundColor: Colors.orange,
        ),
        Chip(
          label: Text('Guchao'),
          avatar: CircleAvatar(
            backgroundColor: Colors.yellow,
            child: Text('Gu'),
          ),
        ),
        Chip(
          label: Text('Guchao'),
          avatar: CircleAvatar(
            backgroundImage: NetworkImage(
                'http://m.qpic.cn/psb?/V14eDJ0U1Q9jx2/pbvagXSYO0s1LlvCwygDgmlU48S7Ov34CkOSGIuPDE8!/b/dMUAAAAAAAAA&bo=tAO0AwAAAAARBzA!&rf=viewer_4'),
          ),
        ),
        Chip(
          label: Text('City'),
          onDeleted: () {},
          deleteIcon: Icon(Icons.delete),
          //删除小图标
          deleteIconColor: Colors.red,
          //图标颜色
          deleteButtonTooltipMessage: 'Remove this tag', //长按提示语
        ),
      ],
    );
  }
}

//基本使用
class ChipUseDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Chip(
          label: Text('Life'),
        ),
        SizedBox(
          width: 8.0,
        ),
        Chip(
          label: Text('Sunset'),
          backgroundColor: Colors.orange,
        ),
        SizedBox(
          width: 8.0,
        ),
        Chip(
          label: Text('Guchao'),
          avatar: CircleAvatar(
            backgroundColor: Colors.yellow,
            child: Text('Gu'),
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        Chip(
          label: Text('Guchao'),
          avatar: CircleAvatar(
            backgroundImage: NetworkImage(
                'http://m.qpic.cn/psb?/V14eDJ0U1Q9jx2/pbvagXSYO0s1LlvCwygDgmlU48S7Ov34CkOSGIuPDE8!/b/dMUAAAAAAAAA&bo=tAO0AwAAAAARBzA!&rf=viewer_4'),
          ),
        ),
      ],
    );
  }
}
