export 'package:vmovie_app/main.dart';

String plotText =
    "When Thor's evil brother, Loki (Tom Hiddleston), gains access to the unlimited power of the energy cube called the Tesseract, Nick Fury (Samuel L. Jackson), director of S.H.I.E.L.D., initiates a superhero recruitment effort to defeat the unprecedented threat to Earth.";

class Movie {
  List<String> genra;
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
    required this.genra,
    required this.plot,
    required this.casts,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    List<Casts> listC = <Casts>[];

    json['cast'].forEach((v) {
      listC.add(Casts.fromJson(v));
      print(v);
    });

    return Movie(
      id: json['id'],
      year: json['year'],
      imdbRating: json['rating'],
      rating: json['rating'],
      ratingCount: json['ratingCount'],
      genra: ["Action", "Drama"],
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

// // our demo data movie data
// List<Movie> movies = [
//   Movie(
//     id: "1",
//     title: "dd",
//     year: "2020",
//     movieRatings: "PG-13",
//     duration: "2h 32min",
//     poster: "assets/images/poster_1.jpg",
//     backdrop: "assets/images/backdrop_1.jpg",
//     rating: "7.3",
//     imdbRating: "76",
//     ratingCount: "150,000",
//     genra: ["Action", "Drama"],
//     plot: plotText,
//     casts: [
//       {
//         "orginalName": "James Mangold",
//         "movieName": "Director",
//         "image": "assets/images/actor_1.png",
//       },
//       {
//         "orginalName": "Matt Damon",
//         "movieName": "Carroll",
//         "image": "assets/images/actor_2.png",
//       },
//       {
//         "orginalName": "Christian Bale",
//         "movieName": "Ken Miles",
//         "image": "assets/images/actor_3.png",
//       },
//       {
//         "orginalName": "Caitriona Balfe",
//         "movieName": "Mollie",
//         "image": "assets/images/actor_4.png",
//       },
//     ],
//   ),
  // Movie(
  //   id: "2",
  //   title: "Ford v Ferrari ",
  //   year: "2019",
  //   movieRatings: "PG-13",
  //   duration: "2h 32min",
  //   poster: "assets/images/poster_2.jpg",
  //   backdrop: "assets/images/backdrop_2.jpg",
  //   rating: "8.2",
  //   imdbRating: "76",
  //   genra: ["Action", "Biography", "Drama"],
  //   plot: plotText,
  //   cast: [
  //     {
  //       "orginalName": "James Mangold",
  //       "movieName": "Director",
  //       "image": "assets/images/actor_1.png",
  //     },
  //     {
  //       "orginalName": "Matt Damon",
  //       "movieName": "Carroll",
  //       "image": "assets/images/actor_2.png",
  //     },
  //     {
  //       "orginalName": "Christian Bale",
  //       "movieName": "Ken Miles",
  //       "image": "assets/images/actor_3.png",
  //     },
  //     {
  //       "orginalName": "Caitriona Balfe",
  //       "movieName": "Mollie",
  //       "image": "assets/images/actor_4.png",
  //     },
  //   ],
  // ),
  // Movie(
  //   id: "1",
  //   title: "Onward",
  //   year: "2020",
  //   movieRatings: "PG-13",
  //   duration: "2h 32min",
  //   poster: "assets/images/poster_3.jpg",
  //   backdrop: "assets/images/backdrop_3.jpg",
  //   rating: "7.6",
  //   imdbRating: "79",
  //   genra: ["Action", "Drama"],
  //   plot: plotText,
  //   cast: [
  //     {
  //       "orginalName": "James Mangold",
  //       "movieName": "Director",
  //       "image": "assets/images/actor_1.png",
  //     },
  //     {
  //       "orginalName": "Matt Damon",
  //       "movieName": "Carroll",
  //       "image": "assets/images/actor_2.png",
  //     },
  //     {
  //       "orginalName": "Christian Bale",
  //       "movieName": "Ken Miles",
  //       "image": "assets/images/actor_3.png",
  //     },
  //     {
  //       "orginalName": "Caitriona Balfe",
  //       "movieName": "Mollie",
  //       "image": "assets/images/actor_4.png",
  //     },
  //   ],
  // ),
// ];
