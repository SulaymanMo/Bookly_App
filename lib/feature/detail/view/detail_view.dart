import 'package:bookly/core/widget/book_img.dart';
import 'package:bookly/core/widget/book_rating.dart';
import 'package:bookly/core/widget/button.dart';
import 'package:bookly/feature/detail/view/widget/appBar_detail.dart';
import 'package:bookly/feature/detail/view/widget/info.dart';
import 'package:bookly/feature/detail/view/widget/similar_list.dart';
import 'package:bookly/feature/home/view_model.dart/similar_books/similar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/model/Book_model.dart';

class DetailView extends StatefulWidget {
  const DetailView({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarCubit>(context).fetchSimilarBooks(
      category: widget.bookModel.volumeInfo!.categories![0],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const AppBarDetail(),
              Info(bookModel: widget.bookModel),
              const SizedBox(height: 18),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  children: [
                    Button(
                      text: 'Download',
                      txtColor: Colors.orange,
                      background: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                    Button(
                      text: 'Preview',
                      txtColor: Colors.white,
                      background: Colors.orange,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: SizedBox(height: 50),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text(
                  'You can also like:',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(height: 10),
              const SimilarList(),
            ],
          ),
        ),
      ),
    );
  }
}
