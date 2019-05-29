import 'package:flutter/material.dart';

class StateManagementDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateManagementDemoState();
  }
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  int _count = 0;

  _increaseCount() {
    setState(() {
      _count++;
    });
    debugPrint('$_count');
  }

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      count: _count,
      increaseCount: _increaseCount,
      child: Scaffold(
        //提供基本的页面结构
        appBar: AppBar(
          title: Text('StateManagementDemo'),
          elevation: 0.0,
        ),
        body: Column(
          children: <Widget>[
            CounterWrapper(
              count: _count,
              increaseCount: _increaseCount,
            ),
            CounterDirectParent(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _increaseCount,
        ),
      ),
    );
  }
}

//多一层
class CounterWrapper extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount; //父类回调
  CounterWrapper({@required this.count, this.increaseCount});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter(count: count, increaseCount: increaseCount,),
    );
  }
}

//由父辈管理状态
class Counter extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount; //父类回调
  Counter({@required this.count, this.increaseCount});

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: Text('$count'),
      backgroundColor: Colors.green,
      onPressed: increaseCount,
    );
  }
}

//直接从CounterProvider获取父类参数
class CounterDirectParent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    CounterProvider provider = CounterProvider.of(context);
    return Center(
      child: ActionChip(
          label: Text('${provider.count}'), onPressed: provider.increaseCount),
    );
  }
}

//创建InheritedWidget 有效的传递数据给子部件
class CounterProvider extends InheritedWidget {
  final int count;
  final VoidCallback increaseCount;
  final Widget child;

  CounterProvider({this.count, this.increaseCount, this.child})
      :super(child: child);

  static CounterProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CounterProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

}
