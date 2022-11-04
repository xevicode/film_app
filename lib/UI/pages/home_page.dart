import 'package:films_app_flutter/UI/widgets/home/section_films_widget.dart';
import 'package:films_app_flutter/UI/widgets/home/section_search_film_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(91, 161, 210, 1),
      body: Column(
        children: const [
          Flexible(
            flex: 1,
            child: SectionSearchFilmWidget(
              text: 'Hello, what do you want to watch?',
            ),
          ),
          Flexible(
            flex: 2,
            child: SectionFilmsWidget(),
          )
        ],
      ),
    );
  }
}
