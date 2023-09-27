
import 'package:clean_code_proyect/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

// ignore: non_constant_identifier_names
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
  GoRoute(
    path: '/',
    name: HomeScreen.name,
    builder: (context, state) => const HomeScreen(),
  ),
] );