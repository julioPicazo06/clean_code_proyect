


import 'package:clean_code_proyect/domain/entities/movie.dart';
import 'package:clean_code_proyect/infrastructure/models/movieDB/movie_moviedb.dart';

class MovieMapper {

  static Movie movieDbToEntity ( MovieMovieDb movieDb ) => Movie(
    adult: movieDb.adult,
    backdropPath: ( movieDb.backdropPath != '' ) 
    ? 'https://image.tmdb.org/t/p/w500${movieDb.backdropPath}' 
    : 'https://image.tmdb.org/t/p/w500/i2GVEvltEu3BXn5crBSxgKuTaca.jpg',
    genreIds: movieDb.genreIds.map((e) => e.toString()).toList(),
    id: movieDb.id,
    originalLanguage: movieDb.originalLanguage,
    originalTitle: movieDb.originalTitle,
    overview: movieDb.overview,
    popularity: movieDb.popularity,
    posterPath: (movieDb.posterPath != '' ) 
    ? 'https://image.tmdb.org/t/p/w500${movieDb.posterPath}'
    : 'no-poster',
    releaseDate: movieDb.releaseDate,
    title: movieDb.title,
    video: movieDb.video,
    voteAverage: movieDb.voteAverage,
    voteCount: movieDb.voteCount

  );

}