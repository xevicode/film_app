import 'package:films_app_flutter/UI/pages/details_page.dart';
import 'package:films_app_flutter/UI/pages/home_page.dart';
import 'package:films_app_flutter/UI/pages/login_page.dart';
import 'package:films_app_flutter/UI/routes/app_routes.dart';
import 'package:films_app_flutter/UI/widgets/movies/item_movie_widget.dart';
import 'package:films_app_flutter/structure/bindings/movies_binding.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: MoviesBinding(),
    ),
    GetPage(name: Routes.DETAILS, page: () => DetailsPage()),
    GetPage(name: Routes.LOGIN_PAGE, page: () => LoginPage()),
  ];
}
