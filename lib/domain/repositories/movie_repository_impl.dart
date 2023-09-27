import 'package:clean_code_proyect/domain/dataSources/movies_dataSource.dart';
import 'package:clean_code_proyect/domain/repositories/movie_repositorie.dart';

import '../entities/movie.dart';

class MovieRositoryImp extends MovieDataRepository {
  final MovieDataSource datasource;
  MovieRositoryImp(this.datasource);
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return datasource.getNowPlaying(page: page);
  }
}
