import 'package:flutter/material.dart';
import 'package:ib_demo/navigation/paths.dart';
import 'package:ib_demo/widgets/widgets_index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _currentIndex;

  void _selectNavBarItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () =>
                Navigator.pushNamed(context, RoutePaths.addMovieScreen),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      child: IndexedStack(
        index: _currentIndex,
        children: const [AllMoviesTab(), MyMoviesTab()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _selectNavBarItem,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        items: const [
          BottomNavigationBarItem(label: 'All Movies', icon: Icon(Icons.movie)),
          BottomNavigationBarItem(label: 'My Movies', icon: Icon(Icons.local_movies_outlined)),
        ],
      ),
    );
  }
}
