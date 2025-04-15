import 'package:flutter/material.dart';
import 'package:flutterlabs/src/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Labs',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routerDelegate: routing.routerDelegate,
      routeInformationParser: routing.routeInformationParser,
      routeInformationProvider: routing.routeInformationProvider,
    );
  }
}
