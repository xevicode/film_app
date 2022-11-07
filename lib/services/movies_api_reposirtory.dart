import 'package:http/http.dart' as http;

class MoviesApiRepository {
  Future<http.Response> getReqResPopularMovies() async {
    final Map<String, dynamic> queryParameters = {
      "api_key": "0a6fdb74969531a4e19744a82c237af1",
      "language": "en-US",
      "page": "1",
    };

    var url =
        Uri.https("api.themoviedb.org", "/3/movie/popular", queryParameters);
    print(url);
    return await http.get(
      url,
      headers: {},
    );
  }
}
