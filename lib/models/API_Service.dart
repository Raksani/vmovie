import 'dart:convert';
import 'package:vmovie_app/models/movie.dart';
import 'package:http/http.dart' as http;

export 'package:vmovie_app/main.dart';

List<Movie> moviesFetch = [];
List<dynamic> tempList = [];

class APIService {
  // Base API request to get response
  Future<void> fetchData(String search) async {
    print("inside fetchData of API Service");
    print("search value: " + search);
    moviesFetch.clear();
    final response = await http
        .get(Uri.parse('http://localhost:8080/api/movie?name=$search'));
    if (response.statusCode == 200) {
      tempList = json
          .decode(response.body)['movie']
          .map((data) => moviesFetch.add(Movie.fromJson(data)))
          .toList();
    }
    print("length of list after fetch ${moviesFetch.length}");
    print(moviesFetch.toString());
  }

  List<Movie> getMovieList() {
    return moviesFetch;
  }
}
