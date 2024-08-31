part of 'similar_cubit.dart';

@immutable
abstract class SimilarState {}

class SimilarInitial extends SimilarState {}

class SimilarLoading extends SimilarState {}

class SimilarError extends SimilarState {
  SimilarError(this.error);

  final String error;
}

class SimilarSuccess extends SimilarState {
  final List<BookModel> books;

  SimilarSuccess(this.books);
}
