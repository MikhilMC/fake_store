import 'package:fake_store/models/product_model.dart';
import 'package:fake_store/views/single_product_item_page.dart';
import 'package:fake_store/widgets/product_grid_container.dart';
import 'package:flutter/material.dart';

class ProductsGrid extends StatelessWidget {
  final List<ProductModel> products;
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
        Rating? rating = products[index].rating;
        double? price = products[index].price;
        return ProductGridContainer(
          id: products[index].id as int,
          title: products[index].title.toString(),
          price: price!.toDouble(),
          rate: rating!.rate!.toDouble(),
          count: rating.count as int,
          imageUrl: products[index].image.toString(),
          heroId: "hero-$index",
          onClick: (int id, String heroId) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SingleProductItemPage(
                  key: Key(id.toString()),
                  id: id,
                  heroId: heroId,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
