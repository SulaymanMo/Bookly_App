part of 'newest_cubit.dart';

@immutable
abstract class NewestState {}

class NewestInitial extends NewestState {}

class NewestLoading extends NewestState {}

class NewestError extends NewestState {
  final String error;

  NewestError(this.error);
}

class NewestSuccess extends NewestState {
  final List<BookModel> books;

  NewestSuccess(this.books);
}
