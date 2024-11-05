import 'package:flutter/material.dart';

class ContainerImage extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadius borderRadius;
  final String imagePath;

  const ContainerImage({
    super.key,
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        image: DecorationImage(
          image: AssetImage(imagePath),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
