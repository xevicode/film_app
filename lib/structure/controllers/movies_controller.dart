import 'package:films_app_flutter/models/movie_model.dart';
import 'package:films_app_flutter/models/popular_movies_model.dart';
import 'package:films_app_flutter/services/movies_repository.dart';
import 'package:get/get.dart';

class MoviesController extends GetxController {
  /*
  Rx<Future<PopularMovies>> popularMovies =
      MoviesRepository().popularMovies().obs;
  */

  Rx<PopularMovies> popularMovies = PopularMovies().obs;
  //Solución 2
  //Rx<Movie> newMovie = Movie().obs;

  Future<void> getPopularMovies() async {
    final PopularMovies newPopularMovies =
        await MoviesRepository().popularMovies();
    print(popularMovies.value);
    popularMovies.value = newPopularMovies;
  }
}
