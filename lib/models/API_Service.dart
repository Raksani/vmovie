import 'dart:convert';
import 'package:vmovie_app/models/movie.dart';
import 'package:http/http.dart' as http;

export 'package:vmovie_app/main.dart';

List<Movie> moviesFetch = [];
List<dynamic> tempList = [];

class APIService {
  // Base API request to get response
  Future<void> fetchData(String search) async {
    // clear carousel
    moviesFetch.clear();
    final response = await http.get(
        Uri.parse('http://localhost:8080/api/movie?name=$search'),
        headers: {"Access-Control_Allow_Origin": "*"});
    if (response.statusCode == 200) {
      tempList = json
          .decode(response.body)['movie']
          .map((data) => moviesFetch.add(Movie.fromJson(data)))
          .toList();
    } else {
      throw Exception("Error: cannot fetch data from backend");
    }
  }
}
