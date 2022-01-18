export 'package:vmovie_app/main.dart';

class Movie {
  String id,
      year,
      imdbRating,
      rating,
      ratingCount,
      plot,
      title,
      poster,
      backdrop,
      movieRatings,
      duration;
  List<Casts> casts;

  Movie({
    required this.poster,
    required this.backdrop,
    required this.title,
    required this.id,
    required this.year,
    required this.movieRatings,
    required this.duration,
    required this.imdbRating,
    required this.ratingCount,
    required this.rating,
    required this.plot,
    required this.casts,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    List<Casts> listC = <Casts>[];

    json['cast'].forEach((v) {
      listC.add(Casts.fromJson(v));
    });

    return Movie(
      id: json['id'],
      year: json['year'],
      imdbRating: json['rating'],
      rating: json['rating'],
      ratingCount: json['ratingCount'],
      plot: json['plot'],
      title: json['title'],
      poster: json['poster'],
      backdrop: json['poster'],
      movieRatings: "PG-13",
      duration: json['duration'],
      casts: listC,
    );
  }
}

class Casts {
  late String originalName, movieName;

  Casts({required this.originalName, required this.movieName});

  Casts.fromJson(Map<String, dynamic> json) {
    originalName = json['originalName'];
    movieName = json['movieName'];
  }
}
