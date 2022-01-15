import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ib_demo/navigation/paths.dart';
import 'package:ib_demo/providers/providers_index.dart';
import 'package:ib_demo/widgets/general/movie_card.dart';

class MyMoviesList extends ConsumerStatefulWidget {
  const MyMoviesList({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _MoviesListState();
}

class _MoviesListState extends ConsumerState<MyMoviesList> {
  @override
  void initState() {
    super.initState();
    ref.read(myMoviesProvider).loadMyMovies();
  }

  @override
  Widget build(BuildContext context) {
    final movies = ref.watch(myMoviesProvider);

    if (movies.myMovies.isNotEmpty) {
      return GridView.builder(
        shrinkWrap: true,
        itemCount: movies.myMovies.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
            childAspectRatio: 2.7 / 4),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, RoutePaths.movieDetailsScreen, arguments: {
              'movie': movies.myMovies.elementAt(index),
              'network': false
            }),
            child: MovieCard(
                posterUrl: movies.myMovies.elementAt(index).poster, isNetworkImage: false,),
          );
        },
      );
    } else {
      return const Center(child: Text('No Movies'));
    }
  }
}
