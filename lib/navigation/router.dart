import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ib_demo/models/models_index.dart';
import 'package:ib_demo/navigation/paths.dart';
import 'package:ib_demo/screens/movie_details.dart';
import 'package:ib_demo/screens/screens_index.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.homeScreen:
        return _navigate(const HomeScreen());
      case RoutePaths.addMovieScreen:
        return _navigate(const AddMovieScreen());
      case RoutePaths.movieDetailsScreen:
        final args = settings.arguments as Map<String, dynamic>;
        return _navigate(MovieDetails(movie: args['movie'] as MovieModel, isNetworkImage: args['network'] as bool));

      default:
        return _navigate(const HomeScreen());
    }
  }

  static _navigate(Widget widget) {
    if(Platform.isAndroid){
      return MaterialPageRoute(builder: (_) => widget);
    }else if(Platform.isIOS){
      return CupertinoPageRoute(builder: (_) => widget);
    }
  }
}