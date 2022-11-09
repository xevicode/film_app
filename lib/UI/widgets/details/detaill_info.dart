import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class Detail_info extends StatelessWidget {
  const Detail_info({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 39, 48, 65),
        ),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                Get.arguments['title'],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
              child: Text(Get.arguments['overview'],
                  style: TextStyle(color: Colors.white, fontSize: 12)),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 300),
              child: RatingBar.builder(
                minRating: 1,
                maxRating: 5,
                initialRating: 2,
                itemSize: 20,
                itemBuilder: (context, index) {
                  return const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  );
                },
                onRatingUpdate: (Value) {},
              ),
            ),
          ],
        )));
  }
}


/*
Text(Get.arguments['title']),

*/
