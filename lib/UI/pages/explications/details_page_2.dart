import 'package:films_app_flutter/models/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage2 extends StatelessWidget {
  //Solución 1
  //final int index;
  const DetailsPage2({
    Key? key,
    //Solución 1
    // required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Solución 1 || Solución2
    //MoviesController moviesController = Get.find();

    //Solución 3
    Movie newMovie = Get.arguments[0];

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              //Solución 1
              // moviesController.popularMovies.value.results![index].title ??
              //     'No hay datos para el título',
              //Solución 2
              //moviesController.newMovie.value.title ??
              //    'No hay datos para el título',
              //Solución 3
              newMovie.title ?? 'No hay datos para el título',
            ),
            Text(
              //Solución 1
              // moviesController.popularMovies.value.results![index].overview ??
              //   'No hay datos para la descripción',

              //Solución 2
              //moviesController.newMovie.value.overview ??
              //    'No hay datos para la descripción',
              //Solución 3
              newMovie.overview ?? 'No hay datos para la descripción',
            ),
          ],
        ),
      ),
    );
  }
}
