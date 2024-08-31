import 'package:bookly/feature/home/model/Book_model.dart';
import 'package:flutter/material.dart';
import '../../../../core/widget/book_img.dart';
import '../../../../core/widget/book_rating.dart';

class Info extends StatelessWidget {
  const Info({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.23,
          ),
          child: BookImg(
            imgUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            bookModel.volumeInfo!.title!,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: const TextStyle(
              overflow: TextOverflow.clip,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          bookModel.volumeInfo?.authors?[0] ?? 'Unknown',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        const SizedBox(height: 8),
        BookRating(
          avgRate: bookModel.volumeInfo?.averageRating?.toString() ?? '0',
          pageCount: bookModel.volumeInfo!.pageCount!.toString(),
        ),
      ],
    );
  }
}
