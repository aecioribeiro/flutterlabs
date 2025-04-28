import 'package:flutter/material.dart';
import 'package:flutterlabs/l10n/app_intl.dart';
import 'package:flutterlabs/src/routes/app_routes.dart';
import 'package:flutterlabs/src/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppLocalizations.of(context)?.app_name,
      theme: AppTheme.main,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerDelegate: routing.routerDelegate,
      routeInformationParser: routing.routeInformationParser,
      routeInformationProvider: routing.routeInformationProvider,
    );
  }
}
