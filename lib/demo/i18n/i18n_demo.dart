import 'package:flutter/material.dart';

import 'intl/guc_localizations.dart';
class I18nDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('I18nDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${locale.languageCode}'),
            Text(locale.toString()),
            Text(Localizations
                .of(context, GucLocalizations)
                .title),
            Text(GucLocalizations
                .of(context)
                .title),
            Text(GucLocalizations
                .of(context)
                .greet('guc')),
          ],
        ),
      ),
    );
  }
}
