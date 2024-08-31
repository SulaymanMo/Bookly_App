import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/feature/home/repo/home_repo_imp.dart';
import 'package:bookly/feature/home/view_model.dart/similar_books/similar_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../feature/detail/view/detail_view.dart';
import '../../feature/home/model/Book_model.dart';
import '../../feature/home/view/home_view.dart';
import '../../feature/splash/view/splash_view.dart';

abstract class Routes {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/home_view',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/detail_view',
        builder: (context, state) => BlocProvider<SimilarCubit>(
          create: (context) => SimilarCubit(
            getIt.get<HomeRepoImp>(),
          ),
          child: DetailView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
