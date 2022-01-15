import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ib_demo/controllers/movies_db_controller.dart';
import 'package:ib_demo/globals/globals_index.dart';
import 'package:ib_demo/models/models_index.dart';

class MyMoviesController extends ChangeNotifier {
  final List<MovieModel> _myMovies = [];

  List<MovieModel> get myMovies => _myMovies;

  Future<void> addMovie({required MovieModel movie}) async {
    try {
      _myMovies.add(movie);
      MoviesDBController.insertMovie(
          {kIDColumnName: movie.id, kDataColumnName: jsonEncode(movie.toJson())});
      notifyListeners();
    } catch (e) {
      Error.safeToString(e);
    }
  }

  Future<void> loadMyMovies() async {
    try {
      List<Map<String, dynamic>> myMovies =
      await MoviesDBController.readAllMovies();

      for (Map<String, dynamic> movie in myMovies) {
        final MovieModel movieModel =
        MovieModel.fromJson(jsonDecode(movie[kDataColumnName]));
        _myMovies.add(movieModel);
      }

      notifyListeners();
    } catch (e) {
      Error.safeToString(e);
    }
  }
}
