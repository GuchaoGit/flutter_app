import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';

class GucLocalizations {
  final Locale locale;

  GucLocalizations(this.locale);

  ///获取GucLocalizations
  static GucLocalizations of(BuildContext context) {
    return Localizations.of(context, GucLocalizations);
  }

  static Map<String, Map<String, String>> _localized = {
    'en': {
      'title': 'hello',
    },
    'zh': {
      'title': '您好',
    },
  };

  String get title {
    return _localized[locale.languageCode]['title'];
  }
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
    return SynchronousFuture<GucLocalizations>(GucLocalizations(locale));
  }

  @override
  bool shouldReload(LocalizationsDelegate<GucLocalizations> old) {
    return false;
  }
}
