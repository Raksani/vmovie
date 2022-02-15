class Casts {
  late String originalName, movieName;

  Casts({required this.originalName, required this.movieName});

  Casts.fromJson(Map<String, dynamic> json) {
    originalName = json['originalName'];
    movieName = json['movieName'];
  }

  Casts.fromMap(Map<String, dynamic> map) {
    originalName = map['originalName'];
    movieName = map['movieName'];
  }

  Casts.fromSqlite(dynamic json) {
    originalName = json['originalName'].toString();
    movieName = json['movieName'].toString();
  }

  @override
  String toString() {
    return '{ "originalName": "$originalName", "movieName": "$movieName"}';
  }
}
