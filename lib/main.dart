import 'package:bookly/Feauters/home/data/models/repos/home_repo_impl.dart';
import 'package:bookly/Feauters/home/presentation/manager/feautured_books_cubit/feautured_books_cubit.dart';
import 'package:bookly/Feauters/home/presentation/manager/newest%20books_cubit/newest_books_cubit.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/App_router.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Feauters/splash_view.dart';
import 'core/utils/service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeauturedBooksCubit(getIt.get<HomeRepoImpl>())
            ..fetchFeaturedBox(),
        ),
        BlocProvider(
            create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>()))
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
