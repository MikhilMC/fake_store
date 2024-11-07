import 'package:fake_store/views/single_product_item_page.dart';
import 'package:fake_store/widgets/product_grid_container.dart';
import 'package:flutter/material.dart';

class ProductsGrid extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  const ProductsGrid({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 0.4,
      ),
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        Map<String, num> rating = products[index]['rating'];
        num? rate = rating['rate']!;
        num price = products[index]['price'];
        return ProductGridContainer(
          id: products[index]['id'] as int,
          title: products[index]['title'].toString(),
          price: price.toDouble(),
          rate: rate.toDouble(),
          count: rating['count'] as int,
          imageUrl: products[index]['image'].toString(),
          onClick: (int id) {
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
                ),
              ),
            );
          },
        );
      },
    );
  }
}
