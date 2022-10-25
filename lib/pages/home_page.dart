import 'package:films_app_flutter/services/movies_api_reposirtory.dart';
import 'package:films_app_flutter/services/movies_repository.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MoviesRepository().popularMovies();
        },
      ),
    );
  }
}
