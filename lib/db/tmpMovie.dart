import 'dart:convert';

const String mock1 = """{
      "id": "tt1258197",
      "title": "Exam",
      "year": "2009",
      "duration": "101 minutes",
      "poster": "https://m.media-amazon.com/images/M/MV5BNDg2NzM2NzIwNF5BMl5BanBnXkFtZTcwODE2ODc1Mg@@._V1_.jpg",
      "rating": "6.8",
      "ratingCount": "111847",
      "plot": "Eight candidates for a highly desirable corporate job are locked together in an exam room and given a final test with just one seemingly simple question. However, it doesn't take long for confusion to ensue and tensions to unravel.",
       "cast": [
        {
          "originalName": "Adar Beck",
          "movieName": "Dark"
        },
        {
          "originalName": "Gemma Chan",
          "movieName": "Chinese Girl"
        },
        {
          "originalName": "Nathalie Cox",
          "movieName": "Blonde"
        }
      ]
    }
    """;

const String mock2 = """
  {
      "id": "tt0278731",
      "title": "Spider",
      "year": "2002",
      "duration": "98 minutes",
      "poster": "https://m.media-amazon.com/images/M/MV5BMmY4OGRmNWMtNmIyNS00YWQ5LWJmMGUtMDI3MWRlMmQ0ZDQzL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg",
      "rating": "6.8",
      "ratingCount": "38239",
      "plot": "A mentally disturbed man takes residence in a halfway house. His mind gradually slips back into the realm created by his illness, where he replays a key part of his childhood.",
      "cast": [
        {
          "originalName": "Ralph Fiennes",
          "movieName": "Spider"
        },
        {
          "originalName": "Miranda Richardson",
          "movieName": "Yvonne"
        },
        {
          "originalName": "Gabriel Byrne",
          "movieName": "Bill Cleg"
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
  return [jsonDecode(mock1), jsonDecode(mock2), jsonDecode(mock3)];
}
