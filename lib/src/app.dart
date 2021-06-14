import 'package:app/src/modules/home/ui/home.dart';
import 'package:app/src/services/shared_preference.dart';
import 'package:app/src/styles/theme.dart';
import 'package:app/src/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'modules/home/ui/main_page.dart';
import 'overrides.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Overrides.APP_NAME,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.lightTheme,
      home: MainPage(),
      routes: routes,
    );
  }
}
