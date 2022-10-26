import 'dart:convert';
import 'package:films_app_flutter/models/popular_movies_model.dart';
import 'package:films_app_flutter/services/movies_api_reposirtory.dart';
import 'package:http/http.dart';

class MoviesRepository {
  Future<PopularMovies> popularMovies() async {
    try {
      Response bodyRes = await MoviesApiRepository().getReqResPopularMovies();

      final body = bodyRes.body;

      print(body);

      final PopularMovies newPopularMovies =
          PopularMovies.fromJson(jsonDecode(body));

      print(newPopularMovies);

      return newPopularMovies;
    } catch (e) {
      return PopularMovies();
    }
  }
}
