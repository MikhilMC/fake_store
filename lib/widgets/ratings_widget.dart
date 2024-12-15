// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class RatingsWidget extends StatelessWidget {
  final double rate;
  final int count;
  const RatingsWidget({
    super.key,
    required this.rate,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.stars_rounded,
          color: Colors.green,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          "$rate ($count)",
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
