import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../model/Book_model.dart';
import '../../repo/home_repo.dart';

part 'feature_book_state.dart';

class FeatureCubit extends Cubit<FeatureState> {
  FeatureCubit(this.homeRepo) : super(FeatureInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeatureBooks() async {
    emit(FeatureLoading());
    var result = await homeRepo.fetchFeatureBooks();

    result.fold(
      (error) {
        emit(FeatureError(error.error));
      },
      (books) {
        emit(FeatureSuccess(books));
      },
    );
  }
}
