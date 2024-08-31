import 'package:bookly/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import '../model/Book_model.dart';

abstract class HomeRepo {
  Future<Either<Error, List<BookModel>>> fetchNewestBooks();

  Future<Either<Error, List<BookModel>>> fetchFeatureBooks();

  Future<Either<Error, List<BookModel>>> fetchSimilarBooks({
    required String category,
  });
}
