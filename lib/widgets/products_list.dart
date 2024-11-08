import 'package:fake_store/views/single_product_item_page.dart';
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
              id: products[index]['id'] as int,
              title: products[index]["title"].toString(),
              price: price.toDouble(),
              rate: rating['rate'] as double,
              count: rating['count'] as int,
              imageUrl: products[index]['image'].toString(),
              category: products[index]['category'].toString(),
              heroId: "hero-$index",
              onClick: (int id, String heroId) {
                Map<String, dynamic> selectedItem =
                    products.firstWhere((element) => element['id'] == id);
                num price = selectedItem['price'];
                Map<String, num> rating = selectedItem['rating'];
                num? rate = rating['rate']!;
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SingleProductItemPage(
                      key: Key(id.toString()),
                      id: id,
                      title: selectedItem['title'].toString(),
                      price: price.toDouble(),
                      description: selectedItem['description'].toString(),
                      category: selectedItem['category'].toString(),
                      image: selectedItem['image'].toString(),
                      rate: rate.toDouble(),
                      count: rating['count'] as int,
                      heroId: heroId,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            )
          ],
        );
      }),
    );
  }
}
