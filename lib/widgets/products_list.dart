import 'package:fake_store/widgets/product_container.dart';
import 'package:flutter/material.dart';

class ProductsList extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  const ProductsList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        if (index >= products.length) return null;
        Map<String, dynamic> rating = products[index]['rating'];
        num price = products[index]['price'];

        return Column(
          children: [
            ProductContainer(
              key: Key(products[index]["id"].toString()),
              title: products[index]["title"].toString(),
              price: price.toDouble(),
              rate: rating['rate'] as double,
              count: rating['count'] as int,
              imageUrl: products[index]['image'].toString(),
              category: products[index]['category'].toString(),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        );
      }),
    );
  }
}
