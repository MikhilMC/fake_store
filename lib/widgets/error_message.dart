import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String errorMessage;
  const ErrorMessage({
    super.key,
    required this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Error: $errorMessage",
      style: const TextStyle(
        color: Colors.red,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
