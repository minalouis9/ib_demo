import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ib_demo/navigation/paths.dart';
import 'package:ib_demo/navigation/router.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return MaterialApp(
          title: 'Instabug Demo',

          onGenerateRoute: RouteGenerator.generateRoute,
          initialRoute: RoutePaths.homeScreen,
          navigatorKey: navigatorKey,
        );
      },
    );
  }
}
