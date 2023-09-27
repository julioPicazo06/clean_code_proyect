import 'package:clean_code_proyect/config/constants/environment.dart';
import 'package:clean_code_proyect/domain/entities/movie.dart';
import 'package:clean_code_proyect/infrastructure/mappers/movie_mapper.dart';
import 'package:clean_code_proyect/infrastructure/models/movieDB/moviedb_response.dart';
import 'package:dio/dio.dart';

import '../../domain/dataSources/movies_dataSource.dart';

class MovieDBDataSource extends MovieDataSource {
  final dio = Dio(
      BaseOptions(baseUrl: 'https://api.themoviedb.org/3', queryParameters: {
    'api_key': Environments.theMovieKey,
    'language': 'es-MX'
  }, headers: {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer ${Environments.theMovieToken}',
    'api_key': Environments.theMovieKey
  }));

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final res = await dio.get(
      '/movie/now_playing',
    );

    final movieDBResponse = MovieDbResponse.fromJson(res.data);

    final List<Movie> movies = movieDBResponse.results
        .where((moviedb) => moviedb.posterPath != 'no-poster')
        .map((movie) => MovieMapper.movieDbToEntity(movie))
        .toList();

    return movies;
  }
}
