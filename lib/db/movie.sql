CREATE TABLE movies(
    id TEXT PRIMARY KEY ,
    year TEXT NOT NULL,
    rating TEXT NOT NULL,
    ratingCount TEXT NOT NULL,
    plot TEXT NOT NULL,
    title TEXT NOT NULL,
    poster TEXT NOT NULL,
    backdrop TEXT NOT NULL,
    movieRatings TEXT NOT NULL,
    duration TEXT NOT NULL,
    casts ARRAY NOT NULL)