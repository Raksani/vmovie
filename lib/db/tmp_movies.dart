import 'dart:convert';

const String mock0 = """{
      "id": "tt1634106",
      "title": "Bloodshot",
      "year": "2020",
      "duration": "109 minutes",
      "poster": "https://m.media-amazon.com/images/M/MV5BYjA5YjA2YjUtMGRlNi00ZTU4LThhZmMtNDc0OTg4ZWExZjI3XkEyXkFqcGdeQXVyNjUyNjI3NzU@._V1_.jpg",
      "rating": "5.7",
      "ratingCount": "73598",
      "plot": "Ray Garrison, a slain soldier, is re-animated with superpowers.",
      "cast": [
        {
          "originalName": "Vin Diesel",
          "movieName": "Bloodshot"
        },
        {
          "originalName": "Eiza González",
          "movieName": "KT"
        },
        {
          "originalName": "Sam Heughan",
          "movieName": "Jimmy Dalton"
        }
      ]
    }
    """;

const String mock1 = """{
      "id": "tt1950186",
      "title": "Ford v Ferrari",
      "year": "2019",
      "duration": "152 minutes",
      "poster": "https://m.media-amazon.com/images/M/MV5BM2UwMDVmMDItM2I2Yi00NGZmLTk4ZTUtY2JjNTQ3OGQ5ZjM2XkEyXkFqcGdeQXVyMTA1OTYzOTUx._V1_.jpg",
      "rating": "8.1",
      "ratingCount": "351443",
      "plot": "American car designer Carroll Shelby and driver Ken Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order to defeat Ferrari at the 24 Hours of Le Mans in 1966.",
      "cast": [
        {
          "originalName": "Matt Damon",
          "movieName": "Carroll Shelby"
        },
        {
          "originalName": "Christian Bale",
          "movieName": "Ken Miles"
        },
        {
          "originalName": "Jon Bernthal",
          "movieName": "Lee Iacocca"
        }
      ]
    }
    """;

const String mock2 = """
   {
      "id": "tt7146812",
      "title": "Onward",
      "year": "2020",
      "duration": "102 minutes",
      "poster": "https://m.media-amazon.com/images/M/MV5BMTZlYzk3NzQtMmViYS00YWZmLTk5ZTEtNWE0NGVjM2MzYWU1XkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_.jpg",
      "rating": "7.4",
      "ratingCount": "133759",
      "plot": "Two elven brothers embark on a quest to bring their father back for one day.",
      "cast": [
        {
          "originalName": "Tom Holland",
          "movieName": "Ian Lightfoot"
        },
        {
          "originalName": "Chris Pratt",
          "movieName": "Barley Lightfoot"
        },
        {
          "originalName": "Julia Louis-Dreyfus",
          "movieName": "Laurel Lightfoot"
        }
      ]
    }
""";

const String mock3 = """
{
      "id": "tt0499549",
      "title": "Avatar",
      "year": "2009",
      "duration": "162 minutes",
      "poster": "https://m.media-amazon.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_.jpg",
      "rating": "7.8",
      "ratingCount": "1174850",
      "plot": "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.",
      "cast": [
        {
          "originalName": "Sam Worthington",
          "movieName": "Jake Sully"
        },
        {
          "originalName": "Zoe Saldana",
          "movieName": "Neytiri"
        },
        {
          "originalName": "Sigourney Weaver",
          "movieName": "Dr. Grace Augustine"
        }
      ]
    }
""";

List<Map<String, dynamic>> getMockMovie() {
  return [
    jsonDecode(mock0),
    jsonDecode(mock1),
    jsonDecode(mock2),
    jsonDecode(mock3)
  ];
}
