class Movie {
  final String title;
  final String backDropPath;
  final String overview;
  final String releaseDate;
  final double rating;

  Movie({
    required this.title,
    required this.backDropPath,
    required this.overview,
    required this.releaseDate,
    required this.rating,
  });

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      title: map['title'],
      backDropPath: map['backdrop_path'],
      overview: map['overview'],
      releaseDate: map['release_date'],
      rating: map['vote_average'].toDouble(),
    );
  }
}
