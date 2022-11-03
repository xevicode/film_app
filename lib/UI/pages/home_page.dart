import 'package:films_app_flutter/UI/widgets/home/section_search_film_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: SectionSearchFilmWidget(
              text: 'Hello, what do you want to watch?',
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Color.fromARGB(255, 39, 48, 65),
            ),
          )
        ],
      ),
    );
  }
}
