import 'package:fake_store/screens/product_list_page/models/product/product.dart';
import 'package:fake_store/screens/product_list_page/models/product_rating/product_rating.dart';
import 'package:fake_store/screens/single_product/view/single_product_item_page.dart';
import 'package:fake_store/widgets/product_grid_container.dart';
import 'package:flutter/material.dart';

class ProductsGridBloc extends StatelessWidget {
  final List<Product> products;
  const ProductsGridBloc({super.key, required this.products});

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
        ProductRating? rating = products[index].rating;
        double? price = products[index].price;
        return ProductGridContainer(
          id: products[index].id,
          title: products[index].title.toString(),
          price: price.toDouble(),
          rate: rating.rate.toDouble(),
          count: rating.count,
          imageUrl: products[index].image.toString(),
          heroId: "hero-${products[index].category}-$index",
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
