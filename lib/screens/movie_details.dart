import 'package:flutter/material.dart';
import 'package:ib_demo/globals/globals_index.dart';
import 'package:ib_demo/models/models_index.dart';
import 'package:ib_demo/widgets/widgets_index.dart';

class MovieDetails extends StatelessWidget {
  final MovieModel movie;
  final bool isNetworkImage;

  const MovieDetails(
      {Key? key, required this.movie, required this.isNetworkImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      title: Text(movie.title, style: kTitleTextStyle),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            MovieCard(
                posterUrl: movie.poster, isNetworkImage: isNetworkImage),
            const SizedBox(height: 15.0),
            Text(movie.title, style: kTitleTextStyle),
            const SizedBox(height: 15.0),
            const Text('Released', style: kSubtitleTextStyle),
            const SizedBox(height: 5.0),
            Text(movie.date.toIso8601String().split('T')[0]),
            const SizedBox(height: 15.0),
            const Text('Overview', style: kSubtitleTextStyle),
            const SizedBox(height: 5.0),
            Text(movie.overview),
          ],
        ),
      ),
    );
  }
}
