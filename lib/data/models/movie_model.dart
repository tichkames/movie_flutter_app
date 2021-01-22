import 'package:movie_app/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  final String backdropPath;
  final List<int> genreIds;
  final String originalLanguage;
  final String originalTitle;
  final String posterPath;
  final String title;
  final double voteAverage;
  final int voteCount;
  final String overview;
  final String releaseDate;
  final bool video;
  final int id;
  final bool adult;
  final double popularity;
  final String mediaType;

  MovieModel(
      {this.backdropPath,
      this.genreIds,
      this.originalLanguage,
      this.originalTitle,
      this.posterPath,
      this.title,
      this.voteAverage,
      this.voteCount,
      this.overview,
      this.releaseDate,
      this.video,
      this.id,
      this.adult,
      this.popularity,
      this.mediaType})
      : super(
          id: id,
          title: title,
          backdropPath: backdropPath,
          posterPath: posterPath,
          releaseDate: releaseDate,
          voteAverage: voteAverage,
          overview: overview,
        );

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      backdropPath: json['backdrop_path'],
      genreIds: json['genre_ids'].cast<int>(),
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      posterPath: json['poster_path'],
      title: json['title'],
      voteAverage: json['vote_average']?.toDouble() ?? 0.0,
      voteCount: json['vote_count'],
      overview: json['overview'],
      releaseDate: json['release_date'],
      video: json['video'],
      id: json['id'],
      adult: json['adult'],
      popularity: json['popularity']?.toDouble() ?? 0.0,
      mediaType: json['media_type'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['backdrop_path'] = this.backdropPath;
    data['genre_ids'] = this.genreIds;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['poster_path'] = this.posterPath;
    data['title'] = this.title;
    data['vote_average'] = this.voteAverage;
    data['vote_count'] = this.voteCount;
    data['overview'] = this.overview;
    data['release_date'] = this.releaseDate;
    data['video'] = this.video;
    data['id'] = this.id;
    data['adult'] = this.adult;
    data['popularity'] = this.popularity;
    data['media_type'] = this.mediaType;
    return data;
  }
}
