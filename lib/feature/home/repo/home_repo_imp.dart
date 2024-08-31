import 'package:bookly/core/utils/api.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../core/error/failure.dart';
import '../model/Book_model.dart';
import 'home_repo.dart';

class HomeRepoImp implements HomeRepo {
  HomeRepoImp(this.api);

  final Api api;

  @override
  Future<Either<Error, List<BookModel>>> fetchNewestBooks() async {
    try {
      List<BookModel> books = [];
      var data =
          await api.get(endPoint: 'Filtering=free&q=programming&Sorting=newest');
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServiceError.fromDio(e));
      }
      return left(ServiceError(e.toString()));
    }
  }

  @override
  Future<Either<Error, List<BookModel>>> fetchFeatureBooks() async {
    try {
      List<BookModel> books = [];
      var data = await api.get(
          endPoint: 'Filtering=free&q=math&Sorting=feature');
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServiceError.fromDio(e));
      }
      return left(ServiceError(e.toString()));
    }
  }

  @override
  Future<Either<Error, List<BookModel>>> fetchSimilarBooks(
      {required category}) async {
    try {
      List<BookModel> books = [];
      var data = await api.get(
          endPoint:
              'q=subject:$category&Filtering=free-ebooks&Sorting=relevance');
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServiceError.fromDio(e));
      }
      return left(ServiceError(e.toString()));
    }
  }
}
