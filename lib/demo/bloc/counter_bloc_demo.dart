import 'dart:async';

import 'package:flutter/material.dart';

class CounterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc bloc = CounterProvider
        .of(context)
        .bloc;
    return StreamBuilder(
      initialData: 0,
      stream: bloc.count,
      builder: (context, snapshot) =>
          Center(
            child: ActionChip(
                label: Text('${snapshot.data}'),
                onPressed: () {
                  bloc.counterSink.add(1);
                }),
          ),
    );
  }
}

class CounterActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc bloc = CounterProvider
        .of(context)
        .bloc;
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        bloc.counterSink.add(1);
      },
    );
  }
}

class CounterProvider extends InheritedWidget {
  final Widget child;
  final CounterBloc bloc;

  CounterProvider({
    @required this.child,
    this.bloc,
  })
      : assert(child != null),
        super(child: child);

  static CounterProvider of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(CounterProvider)
    as CounterProvider;
  }

  @override
  bool updateShouldNotify(CounterProvider old) {
    return true;
  }

}

class CounterBloc {
  // ignore: close_sinks
  final _counterActionController = StreamController<int>();

  StreamSink<int> get counterSink => _counterActionController.sink;

  // ignore: close_sinks
  final _counterController = StreamController<int>();

  Stream<int> get count => _counterController.stream;

  CounterBloc() {
    _counterActionController.stream.listen(onData);
  }

  void onData(int data) {
    _count += data;
    _counterController.sink.add(_count);
  }

  void print() {
    debugPrint('BLoC$_count');
  }

  int _count = 0;

  void disponse() {
    _counterActionController.close();
    _counterController.close();
  }
}
