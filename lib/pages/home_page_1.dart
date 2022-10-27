import 'package:films_app_flutter/models/movie_model.dart';
import 'package:films_app_flutter/pages/details_page.dart';
import 'package:films_app_flutter/routes/app_routes.dart';
import 'package:films_app_flutter/structure/controllers/movies_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MoviesController moviesController = Get.find();

    return GetBuilder<MoviesController>(
        init: MoviesController(),
        builder: (moviesController) {
          moviesController.getPopularMovies();
          return Scaffold(
            /*floatingActionButton: FloatingActionButton(
                onPressed: () {
                  moviesController.getPopularMovies();
                },
              ),*/
            body: Obx(
              () => ListView.builder(
                  itemCount:

                      /*(moviesController.popularMovies.value.results == null)
                  ? 0
                  : moviesController.popularMovies.value.results!.length,*/
                      moviesController.popularMovies.value.results?.length ?? 0,
                  //4,
                  itemBuilder: (context, index) {
                    return TextButton(
                      onPressed: () {
                        //Solución 1
                        //Get.to(DetailsPage(index: index));

                        //Solución 2
                        /*
                 ; 
      },
    )       moviesController.newMovie.value =
                        moviesController.popularMovies.value.results?[index] ??
                            Movie();
                    Get.toNamed(Routes.DETAILS);
                    */

                        Get.toNamed(Routes.DETAILS, arguments: [
                          moviesController.popularMovies.value.results![index]
                        ]);
                      },
                      child: Container(
                        color: Colors.yellow,
                        child: Text(moviesController
                                .popularMovies.value.results?[index].title ??
                            ''),
                      ),
                    );
                  }),
            ),
          );
        });
  }
}
