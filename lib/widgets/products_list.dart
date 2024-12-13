import 'package:fake_store/models/product_model.dart';
import 'package:fake_store/services/all_products_service.dart';
import 'package:fake_store/screens/single_product/view/single_product_item_page.dart';
import 'package:fake_store/widgets/product_container.dart';
import 'package:flutter/material.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductModel>>(
      future: allProductsList(needToSort: false, limit: 6),
      builder: (context, snapshot) {
        // Loading State
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        // Error State
        if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text("Error: ${snapshot.error}"),
            ),
          );
        }

        // Empty Response data array
        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text("No products found"),
            ),
          );
        }

        // Success State
        List<ProductModel> products = snapshot.data!.toList();
        return SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            if (index >= products.length) return null;
            Rating? rating = products[index].rating;
            double? price = products[index].price;

            return Column(
              children: [
                ProductContainer(
                  key: Key(products[index].id.toString()),
                  id: products[index].id as int,
                  title: products[index].title.toString(),
                  price: price!,
                  rate: rating!.rate!,
                  count: rating.count!,
                  imageUrl: products[index].image.toString(),
                  category: products[index].category.toString(),
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
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            );
          }),
        );
      },
    );
  }
}
