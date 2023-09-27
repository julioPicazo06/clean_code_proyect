

import 'package:clean_code_proyect/domain/repositories/movie_repository_impl.dart';
import 'package:clean_code_proyect/infrastructure/datasources/moviedb_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


// ? Este repositorio solo es de lectura es inmutable
final movieRepositoryProvider = Provider((ref){
  return MovieRositoryImp( MovieDBDataSource() );
});