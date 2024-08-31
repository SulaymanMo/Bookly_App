import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/feature/home/repo/home_repo_imp.dart';
import 'package:bookly/feature/home/view_model.dart/newest_books/newest_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/utils/routes.dart';
import 'feature/home/view_model.dart/feature_book/feature_book_cubit.dart';

void main() {
  setup();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureCubit(
            getIt.get<HomeRepoImp>(),
          )..fetchFeatureBooks(),
        ),
        BlocProvider(
          create: (context) => NewestCubit(
            getIt.get<HomeRepoImp>(),
          )..fetchNewestBooks(),
        ),
      ],
      child: const Bookly(),
    ),
  );
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routes.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
