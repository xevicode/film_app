import 'package:films_app_flutter/structure/controllers/movies_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MoviesController moviesController = Get.put(MoviesController());
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await moviesController.getPopularMovies();
          },
        ),
        body: Obx(
          () => ListView.builder(
              itemCount:

                  /*(moviesController.popularMovies.value.results == null)
              ? 0
              : moviesController.popularMovies.value.results!.length,*/
                  moviesController.popularMovies.value.results?.length ?? 0,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(top: 10, left: 40, right: 20),
                  color: Colors.yellow,
                  child: Text(moviesController
                          .popularMovies.value.results?[index].overview ??
                      ''),
                );
              }),
        ));
  }
}
