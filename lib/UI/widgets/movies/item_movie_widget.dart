import 'package:flutter/material.dart';

class ItemMovieWidget extends StatelessWidget {
  final String title;
  final String src;
  const ItemMovieWidget({
    Key? key,
    required this.title,
    required this.src,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      child: Column(children: [
        Image.network(
          src,
          height: 50,
          width: 50,
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ]),
    );
  }
}
