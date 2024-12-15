// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  final String notFoundMessage;
  const NotFound({
    super.key,
    required this.notFoundMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        notFoundMessage,
        style: const TextStyle(
          color: Colors.red,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
