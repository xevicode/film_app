import 'package:films_app_flutter/UI/routes/app_routes.dart';
import 'package:films_app_flutter/structure/controllers/movies_controller.dart';
import 'package:films_app_flutter/UI/utils/urls_db.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MoviesController>(
        init: MoviesController(),
        builder: (moviesController) {
          moviesController.getPopularMovies();
          return Scaffold(
            body: Obx(
              () => ListView.builder(
                  itemCount:
                      moviesController.popularMovies.value.results?.length ?? 0,
                  itemBuilder: (context, index) {
                    return TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.DETAILS, arguments: [
                            moviesController.popularMovies.value.results![index]
                          ]);
                        },
                        child: ListTile(
                          title: Row(
                            children: [
                              Image.network(
                                urlImage(moviesController.popularMovies.value
                                    .results![index].posterPath!),
                                height: 300,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                moviesController.popularMovies.value
                                        .results?[index].title ??
                                    '',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ));
                  }),
            ),
          );
        });
  }
}
