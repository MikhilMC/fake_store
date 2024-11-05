import 'package:flutter/material.dart';

class HomePageButton extends StatelessWidget {
  final String buttonIconPath;
  final String buttonName;

  const HomePageButton({
    super.key,
    required this.buttonName,
    required this.buttonIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(247, 170, 54, 1),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(
          color: const Color.fromRGBO(138, 60, 122, 1),
          style: BorderStyle.solid,
          width: 3,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(buttonIconPath),
            const SizedBox(
              height: 10,
            ),
            Text(
              buttonName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16, // Adjust text size
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
