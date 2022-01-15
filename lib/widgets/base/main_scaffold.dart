import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ib_demo/providers/providers_index.dart';

class MainScaffold extends StatelessWidget {
  final BottomNavigationBar? bottomNavigationBar;
  final Widget child;
  final Widget? title;
  final List<Widget> actions;

  const MainScaffold(
      {Key? key,
      required this.child,
      this.bottomNavigationBar,
      this.title,
      this.actions = const []})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final appTheme = ref.watch(appThemeProvider);

        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: title,
            actions: [
              ...actions,
              IconButton(
                  onPressed: () {
                    appTheme.changeAppTheme();
                  },
                  icon: const Icon(Icons.brightness_6)),
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: child,
            ),
          ),
          bottomNavigationBar: bottomNavigationBar,
        );
      },
      child: child,
    );
  }
}
