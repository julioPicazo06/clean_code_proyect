import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environments {
  static String theMovieKey = dotenv.env['THE_MOVIEDB_KEY'] ?? 'No key';
  static String theMovieToken = dotenv.env[ 'TOKEN_MOVIEDB' ] ?? 'No token';
}
