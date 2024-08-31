import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../model/Book_model.dart';
import '../../repo/home_repo.dart';
part 'newest_state.dart';

class NewestCubit extends Cubit<NewestState> {
  NewestCubit(this.homeRepo) : super(NewestInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestLoading());
    var result = await homeRepo.fetchNewestBooks();

    result.fold(
      (error) {
        emit(NewestError(error.error));
      },
      (books) {
        emit(NewestSuccess(books));
      },
    );
  }
}
