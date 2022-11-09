import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class ItemMovieWidget extends StatelessWidget {
  final String title;
  final String src;
  final double rating;
  final String overview;
  const ItemMovieWidget({
    Key? key,
    required this.title,
    required this.src,
    required this.rating,
    required this.overview,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      //height: 220,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 39, 48, 65),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: (() {
              Get.toNamed(Routes.DETAILS, arguments: {
                'src': src,
                'title': title,
                'overview': overview,
              });
            }),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                src,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Text(title,
                  maxLines: 1,
                  style: TextStyle(color: Colors.white, fontSize: 12))),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Row(
                  children: [
                    RatingBar.builder(
                      minRating: 1,
                      maxRating: 5,
                      initialRating: 2,
                      itemSize: 10,
                      itemBuilder: (context, index) {
                        return const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        );
                      },
                      onRatingUpdate: (Value) {},
                    ),

                    // Text(  style: TextStyle(color: Colors.white, fontSize: 12)),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
