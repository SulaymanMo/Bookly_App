part of 'feature_book_cubit.dart';

@immutable
abstract class FeatureState {}

class FeatureInitial extends FeatureState {}

class FeatureLoading extends FeatureState {}

class FeatureError extends FeatureState {
  FeatureError(this.error);

  final String error;
}

class FeatureSuccess extends FeatureState {
  FeatureSuccess(this.books);

  final List<BookModel> books;
}

