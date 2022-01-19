export 'package:vmovie_app/main.dart';
import 'dart:convert';

import 'package:vmovie_app/models/casts.dart';

class Movie {
  String id,
      year,
      rating,
      ratingCount,
      plot,
      title,
      poster,
      backdrop,
      movieRatings,
      duration;
  List<Casts> casts = [];

  Movie({
    required this.poster,
    required this.backdrop,
    required this.title,
    required this.id,
    required this.year,
    required this.movieRatings,
    required this.duration,
    required this.ratingCount,
    required this.rating,
    required this.plot,
    required this.casts,
  });

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'year': year,
      'rating': rating,
      'ratingCount': ratingCount,
      'plot': plot,
      'title': title,
      'poster': poster,
      'backdrop': backdrop,
      'movieRatings': movieRatings,
      'duration': duration,
      'casts': casts.toString(),
    };
  }

  factory Movie.fromJson(Map<String, dynamic> json) {
    List<Casts> listC = <Casts>[];

    json['cast'].forEach((v) {
      listC.add(Casts.fromJson(v));
    });

    return Movie(
      id: json['id'],
      year: json['year'],
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

  factory Movie.fromSqlite(Map<String, dynamic> map) {
    List<Casts> listC = <Casts>[];

    jsonDecode(map['casts']).forEach((v) => listC.add(Casts.fromJson(v)));

    return Movie(
      id: map['id'],
      year: map['year'],
      rating: map['rating'],
      ratingCount: map['ratingCount'],
      plot: map['plot'],
      title: map['title'],
      poster: map['poster'],
      backdrop: map['poster'],
      movieRatings: "PG-13",
      duration: map['duration'],
      casts: listC,
    );
  }
}
