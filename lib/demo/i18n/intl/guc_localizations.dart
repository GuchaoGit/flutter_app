import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'guc_demo_messages_all.dart';

// 使用下面命令生成 文件信息模板
// flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/demo/i18n/intl/ lib/demo/i18n/intl/guc_localizations.dart
class GucLocalizations {

  /// 一、获取GucLocalizations
  static GucLocalizations of(BuildContext context) {
    return Localizations.of(context, GucLocalizations);
  }

  //二、创建 load()
  static Future<GucLocalizations> load(Locale locale) {
    final String name = locale.countryCode.isEmpty
        ? locale.languageCode
        : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return GucLocalizations();
    });
  }

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


///创建LocalizationDelegate 用于加载本地化资源
class GucLocalizationsDelegate extends LocalizationsDelegate<GucLocalizations> {
  ///创建LocalizationDelegate 用于加载本地化资源
  GucLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  Future<GucLocalizations> load(Locale locale) {
    return GucLocalizations.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<GucLocalizations> old) {
    return false;
  }
}
