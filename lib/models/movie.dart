export 'package:vmovie_app/main.dart';

String plotText =
    "When Thor's evil brother, Loki (Tom Hiddleston), gains access to the unlimited power of the energy cube called the Tesseract, Nick Fury (Samuel L. Jackson), director of S.H.I.E.L.D., initiates a superhero recruitment effort to defeat the unprecedented threat to Earth.";

class Movie {
  final List<String> genra;
  final String id,
      year,
      imdbRating,
      rating,
      plot,
      title,
      poster,
      backdrop,
      movieRatings,
      duration;
  final List<Map> cast;

  Movie({
    required this.poster,
    required this.backdrop,
    required this.title,
    required this.id,
    required this.year,
    required this.movieRatings,
    required this.duration,
    required this.imdbRating,
    required this.rating,
    required this.genra,
    required this.plot,
    required this.cast,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        id: json['id'],
        year: json['year'],
        // imdbRating: json['imdbRating'],
        imdbRating: json['rank'],
        rating: json['imdbRating'],
        genra: ["Action", "Drama"],
        plot: plotText,
        title: json['title'],
        poster: json['poster'],
        backdrop: json['poster'],
        movieRatings: "PG-13",
        duration: "2h 32min",
        cast: [
          {
            "orginalName": "James Mangold",
            "movieName": "Director",
            "image": "assets/images/actor_1.png",
          },
          {
            "orginalName": "Matt Damon",
            "movieName": "Carroll",
            "image": "assets/images/actor_2.png",
          },
          {
            "orginalName": "Christian Bale",
            "movieName": "Ken Miles",
            "image": "assets/images/actor_3.png",
          },
          {
            "orginalName": "Caitriona Balfe",
            "movieName": "Mollie",
            "image": "assets/images/actor_4.png",
          },
        ],
      );
}
