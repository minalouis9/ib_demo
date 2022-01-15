import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ib_demo/navigation/paths.dart';
import 'package:ib_demo/providers/providers_index.dart';
import 'package:ib_demo/widgets/general/movie_card.dart';

class AllMoviesList extends ConsumerStatefulWidget {
  const AllMoviesList({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _MoviesListState();
}

class _MoviesListState extends ConsumerState<AllMoviesList> {
  late ScrollController _controller;

  _scrollListener() {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      ref.read(allMoviesProvider.notifier).getMovies();
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    ref.read(allMoviesProvider.notifier).getMovies();
  }

  @override
  Widget build(BuildContext context) {
    final moviesStates = ref.watch(allMoviesProvider);
    final movies = ref.watch(allMoviesProvider.notifier);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: GridView.builder(
            key: const PageStorageKey<String>('controller'),
            controller: _controller,
            shrinkWrap: true,
            itemCount: movies.movies.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                childAspectRatio: 2.7 / 4),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => Navigator.pushNamed(context, RoutePaths.movieDetailsScreen, arguments: {
                  'movie': movies.movies.elementAt(index),
                  'network': true
                }),
                child: MovieCard(
                    posterUrl: movies.movies.elementAt(index).poster, isNetworkImage: true,),
              );
            },
          ),
        ),
        moviesStates.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error) => Center(child: Text(error)),
            data: (data) => const SizedBox()),
      ],
    );
  }
}
