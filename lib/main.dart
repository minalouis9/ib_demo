import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ib_demo/app.dart';

void main() {
  runApp(const MyMain());
}

class MyMain extends StatelessWidget {
  const MyMain({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ProviderScope(child: MyApp());
  }
}