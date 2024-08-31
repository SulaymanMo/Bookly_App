import 'package:bookly/core/widget/book_img.dart';
import 'package:bookly/core/widget/error_message.dart';
import 'package:bookly/core/widget/loading_indicator.dart';
import 'package:bookly/feature/home/view_model.dart/newest_books/newest_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/widget/book_rating.dart';
import '../../model/Book_model.dart';

class NewestList extends StatelessWidget {
  const NewestList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestCubit, NewestState>(
      builder: (context, state) {
        if (state is NewestSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(6),
            itemCount: state.books.length,
            itemBuilder: (context, index) => Item(state.books[index]),
          );
        } else if (state is NewestError) {
          return ErrorMsg(errorMsg: state.error);
        } else {
          return const LoadingIndicator();
        }
      },
    );
  }
}

class Item extends StatelessWidget {
  const Item(this.bookModel, {super.key});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(
          '/detail_view',
          extra: bookModel,
        );
      },
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
            child: BookImg(
              imgUrl: bookModel.volumeInfo!.imageLinks!.smallThumbnail!,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookModel.volumeInfo!.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 18,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    bookModel.volumeInfo?.authors?[0] ?? 'Unknown',
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Text(
                        'Free',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      BookRating(
                        avgRate:
                            bookModel.volumeInfo?.averageRating?.toString() ??
                                '0',
                        pageCount: bookModel.volumeInfo!.pageCount!.toString(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
