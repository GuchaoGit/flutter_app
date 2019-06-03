import 'package:flutter_test/flutter_test.dart';

import '../lib/demo/test/test_demo.dart';

void main() {
  test('should return hello + something.', () {
    var string = GucTestDemo.greet('guc');
    expect(string, 'hello guc'); //添加断言 （期望值）
  });
}
