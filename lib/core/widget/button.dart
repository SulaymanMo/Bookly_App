import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.text,
    required this.txtColor,
    required this.background,
    this.borderRadius,
  }) : super(key: key);

  final String text;
  final Color txtColor;
  final Color background;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: background,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: txtColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
