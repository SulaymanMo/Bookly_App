import 'package:bookly/core/widget/error_message.dart';
import 'package:bookly/core/widget/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/widget/book_img.dart';
import '../../view_model.dart/feature_book/feature_book_cubit.dart';

class FeatureList extends StatelessWidget {
  const FeatureList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.36,
      child: BlocBuilder<FeatureCubit, FeatureState>(
        builder: (context, state) {
          if (state is FeatureSuccess) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(
                    '/detail_view',
                    extra: state.books[index],
                  );
                },
                child: BookImg(
                  imgUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                ),
              ),
            );
          } else if (state is FeatureError) {
            return ErrorMsg(errorMsg: state.error);
          } else {
            return const LoadingIndicator();
          }
        },
      ),
    );
  }
}
