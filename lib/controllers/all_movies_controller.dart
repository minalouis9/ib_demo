import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ib_demo/helpers/helpers_index.dart';
import 'package:ib_demo/models/models_index.dart';
import 'package:ib_demo/models/movie_state.dart';

class AllMoviesController extends StateNotifier<MovieState> {
  AllMoviesController() : super(const MovieState.loading());

  final ApiHelper _apiHelper = ApiHelper();
  final List<MovieModel> _allMovies = [];
  int? _totalPages;
  int _currentPage = 1;

  List<MovieModel> get movies => _allMovies;

  Future<void> getMovies() async {
    state = const MovieState.loading();
    try {
      if (_totalPages != null) {
        if (_currentPage <= _totalPages!) {
          ResponseModel response =
              await _apiHelper.getMovies(page: _currentPage);
          List<MovieModel> moviesList = response.movies;
          _allMovies.addAll(moviesList);
          _currentPage++;
          state = MovieState.data(moviesList);
        }
      } else {
        ResponseModel response = await _apiHelper.getMovies(page: _currentPage);
        List<MovieModel> moviesList = response.movies;
        _totalPages = response.totalPages;
        _allMovies.addAll(moviesList);
        _currentPage++;
        state = MovieState.data(moviesList);
      }
    } catch (e) {
      state = MovieState.error(e.toString());
    }
  }
}
