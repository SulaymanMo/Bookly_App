import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/Book_model.dart';
import '../../repo/home_repo.dart';

part 'similar_state.dart';

class SimilarCubit extends Cubit<SimilarState> {
  SimilarCubit(this.homeRepo) : super(SimilarInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);

    result.fold(
      (error) {
        emit(SimilarError(error.error));
      },
      (books) {
        emit(SimilarSuccess(books));
      },
    );
  }
}
