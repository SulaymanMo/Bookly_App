import 'package:bookly/core/widget/loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookImg extends StatelessWidget {
  const BookImg({required this.imgUrl, super.key});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: AspectRatio(
          aspectRatio: 3 / 4,
          child: CachedNetworkImage(
            imageUrl: imgUrl,
            fit: BoxFit.fill,
            placeholder: (context, _) => const LoadingIndicator(),
            errorWidget: (context, _, error) => const Icon(
              Icons.error,
              size: 36,
            ),
          ),
        ),
      ),
    );
  }
}
