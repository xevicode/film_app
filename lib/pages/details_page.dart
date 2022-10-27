import 'package:films_app_flutter/models/movie_model.dart';
import 'package:films_app_flutter/structure/controllers/movies_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  //Solución 1
  //final int index;
  const DetailsPage({
    Key? key,
    //Solución 1
    // required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Solución 1
    //MoviesController moviesController = Get.find();

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
                //Solución 1
                // moviesController.popularMovies.value.results![index].title ??
                //     'No hay datos para el título',
                ''),
            Text(
                //Solución 1
                // moviesController.popularMovies.value.results![index].overview ??
                //   'No hay datos para la descripción',
                ''),
          ],
        ),
      ),
    );
  }
}
