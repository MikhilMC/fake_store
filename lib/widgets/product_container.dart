import 'package:fake_store/widgets/container_network_image.dart';
import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  final String title;
  final double price;
  final double rate;
  final int count;
  final String imageUrl;
  final String category;

  const ProductContainer({
    super.key,
    required this.title,
    required this.price,
    required this.rate,
    required this.count,
    required this.imageUrl,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
            color: const Color.fromRGBO(138, 60, 122, 1),
            style: BorderStyle.solid),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          ContainerNetworkImage(
            width: 100,
            height: double.infinity,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            imageUrl: imageUrl,
          ),
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            width: 250,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: false,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.stars_rounded,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "$rate ($count) • \$$price",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  category,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
