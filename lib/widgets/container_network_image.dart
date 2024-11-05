import 'package:flutter/material.dart';

class ContainerNetworkImage extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadius borderRadius;
  final String imageUrl;

  const ContainerNetworkImage({
    super.key,
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
