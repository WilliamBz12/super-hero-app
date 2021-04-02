import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'shared/style/app_theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Super Hero App',
      initialRoute: Modular.initialRoute,
      onGenerateRoute: Modular.generateRoute,
      theme: AppTheme.light,
    );
  }
}
