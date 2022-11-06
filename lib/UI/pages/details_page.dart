import 'package:films_app_flutter/UI/widgets/details/detaill_info.dart';
import 'package:films_app_flutter/UI/widgets/movies/item_movie_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/movie_model.dart';
import '../../structure/controllers/movies_controller.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.favorite),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Flexible(
            flex: 4,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 39, 48, 65),
                  ),
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    child: Image.network(
                      Get.arguments['src'],
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
          Flexible(flex: 5, child: Detail_info())
        ],
      ),
    );
  }
}
