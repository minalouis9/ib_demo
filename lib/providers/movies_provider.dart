import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ib_demo/controllers/all_movies_controller.dart';
import 'package:ib_demo/controllers/my_movies_controller.dart';
import 'package:ib_demo/models/movie_state.dart';

final allMoviesProvider = StateNotifierProvider<AllMoviesController, MovieState>((ref) => AllMoviesController());

final myMoviesProvider = ChangeNotifierProvider<MyMoviesController>((ref) => MyMoviesController());