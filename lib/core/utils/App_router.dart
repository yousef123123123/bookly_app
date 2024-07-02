import 'package:bookly/Feauters/home/book-details_view.dart';
import 'package:bookly/Feauters/home/data/models/book_model/book_model.dart';
import 'package:bookly/Feauters/home/data/models/repos/home_repo_impl.dart';
import 'package:bookly/Feauters/home/home_view.dart';
import 'package:bookly/Feauters/home/presentation/manager/similarbooks%20cubit/similar_books_cubit_cubit.dart';
import 'package:bookly/Feauters/search/presentation/views/search_view.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        path: kSearchView,
        builder: (context, state) => SearchView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubitCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
