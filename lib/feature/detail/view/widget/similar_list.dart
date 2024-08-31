import 'package:bookly/core/widget/book_img.dart';
import 'package:bookly/core/widget/error_message.dart';
import 'package:bookly/core/widget/loading_indicator.dart';
import 'package:bookly/feature/home/view_model.dart/similar_books/similar_cubit.dart';
import 'package:bookly/feature/home/view_model.dart/similar_books/similar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarList extends StatelessWidget {
  const SimilarList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarCubit, SimilarState>(
      builder: (context, state) {
        if (state is SimilarSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.width * 0.46,
            child: ListView.builder(
              itemCount: state.books.isEmpty ? 0 : state.books.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => BookImg(
                imgUrl:
                    state.books[index].volumeInfo?.imageLinks?.thumbnail! ?? '',
              ),
            ),
          );
        } else if (state is SimilarError) {
          return ErrorMsg(errorMsg: state.error);
        }
        return const LoadingIndicator();
      },
    );
  }
}
