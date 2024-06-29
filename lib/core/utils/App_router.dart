import 'package:bookly/Feauters/home/presentation/views/book-details_view.dart';
import 'package:bookly/Feauters/home/presentation/views/home_view.dart';
import 'package:bookly/Feauters/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../Feauters/Splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
