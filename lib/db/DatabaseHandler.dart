import 'dart:convert';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:vmovie_app/models/API_Service.dart';
import 'package:vmovie_app/models/movie.dart';

class DatabaseHandler {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'example6.db'),
      onCreate: (database, version) async {
        await database.execute("DROP TABLE IF EXISTS movie");
        await database.execute(
          "CREATE TABLE IF NOT EXISTS movie(id TEXT PRIMARY KEY ,year TEXT NOT NULL, rating TEXT NOT NULL, ratingCount TEXT NOT NULL,plot TEXT NOT NULL, title TEXT NOT NULL,poster TEXT NOT NULL,backdrop TEXT NOT NULL,movieRatings TEXT NOT NULL,duration TEXT NOT NULL,casts TEXT NOT NULL)",
        );
      },
      version: 1,
    );
  }

  Future<int> insertUser(List<Movie> movies) async {
    int result = 0;
    final Database db = await initializeDB();
    db.execute("DELETE FROM movie");
    for (var movie in movies) {
      result = await db.insert(
        'movie',
        movie.toMap(),
      );
    }
    return result;
  }

  Future retrieveUsers() async {
    final Database db = await initializeDB();
    final List<Map<String, Object?>> queryResult = await db.query('movie');

    for (Map<String, Object?> result in queryResult) {
      moviesFetch.add(Movie.fromSqlite(result));
    }
  }
}
