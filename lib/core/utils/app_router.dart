import 'package:bookly/features/home/presentation/views/book_view_details.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/serach_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: '/homeView',
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: '/bookViewDetails',
      builder: (context, state) => BookViewDetails(),
    ),
    GoRoute(
      path: '/searchView',
      builder: (context, state) => SearchView(),
    ),
  ],
);
}