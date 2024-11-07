import 'package:fake_store/widgets/container_network_image.dart';
import 'package:flutter/material.dart';

class ProductGridContainer extends StatelessWidget {
  final int id;
  final String title;
  final double price;
  final String imageUrl;
  final double rate;
  final int count;
  final Function(int) onClick;

  const ProductGridContainer({
    super.key,
    required this.id,
    required this.title,
    required this.price,
    required this.rate,
    required this.count,
    required this.imageUrl,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(id),
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromRGBO(138, 60, 122, 1),
            width: 3.0,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContainerNetworkImage(
              width: double.infinity,
              height: 340,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              imageUrl: imageUrl,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$$price",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.stars,
                        color: Colors.green,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "$rate - ($count)",
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
