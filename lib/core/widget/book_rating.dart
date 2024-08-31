import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    Key? key,
    required this.avgRate,
    required this.pageCount,
  }) : super(key: key);

  final dynamic avgRate;
  final dynamic pageCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FaIcon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Colors.yellow,
        ),
        const SizedBox(width: 6),
        Text(
          '$avgRate',
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 4.5),
        Text(
          '($pageCount)',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}
