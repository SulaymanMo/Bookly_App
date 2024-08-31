import 'package:flutter/material.dart';

class ErrorMsg extends StatelessWidget {
  const ErrorMsg({required this.errorMsg, Key? key}) : super(key: key);
  final String errorMsg;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMsg,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
