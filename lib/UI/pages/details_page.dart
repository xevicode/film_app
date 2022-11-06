import 'package:films_app_flutter/UI/widgets/movies/item_movie_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/movie_model.dart';
import '../../structure/controllers/movies_controller.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Stack(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    child: Image.network(
                      Get.arguments,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
