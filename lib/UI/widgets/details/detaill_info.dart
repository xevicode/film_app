import 'package:flutter/material.dart';
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
            Text(
              Get.arguments['title'],
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Text(Get.arguments['overview'],
                style: TextStyle(color: Colors.white, fontSize: 12)),
            SizedBox(
              height: 20,
            ),
          ],
        )));
  }
}


/*
Text(Get.arguments['title']),

*/
