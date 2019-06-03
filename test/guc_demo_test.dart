import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/demo/test/test_demo.dart';

void main() {
  test('should return hello + something.', () {
    var string = GucTestDemo.greet('guc');
    expect(string, 'hello guc'); //添加断言 （期望值）
  });

  testWidgets('widget testing demo', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: TestDemo(),));
    final labelTest = find.text('helloworld');
//    expect(labelTest, findsNothing);//未找到 不通过
//    expect(labelTest, findsOneWidget);//找到一个 通过
    expect(labelTest, findsNWidgets(1)); //找到一个

    final actionChipLabelText = find.text('0');
    expect(actionChipLabelText, findsOneWidget); //找到一个
    final actionChip = find.byType(ActionChip);
    await tester.tap(actionChip);
    await tester.pump();
    final actionChipLabelTextAfterTap = find.text('1');
    expect(actionChipLabelTextAfterTap, findsOneWidget); //找到一个
    expect(actionChipLabelText, findsNothing); //未找到

  });
}
