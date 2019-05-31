import 'package:intl/intl.dart';

// 使用下面命令生成 文件信息模板
// flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/demo/i18n/intl/ lib/demo/i18n/intl/guc_localizations.dart
class GucLocalizations {
  String get title => Intl.message(
        'hello',
        name: 'title',
        desc: 'demo localizations',
      );

  String greet(String name) => Intl.message(
        'hello $name',
        name: 'greet',
        desc: 'greet someone.',
        args: [name],
      );
}
