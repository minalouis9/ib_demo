import 'package:flutter/material.dart';

class MainScaffold extends StatelessWidget {
  final AppBar? appBar;
  final BottomNavigationBar? bottomNavigationBar;
  final Widget child;

  const MainScaffold({Key? key, required this.child, this.appBar, this.bottomNavigationBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar ?? AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: child,
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
