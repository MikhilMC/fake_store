import 'package:fake_store/models/product_model.dart';
import 'package:fake_store/services/womens_clothing_products_service.dart';
import 'package:fake_store/widgets/products_grid.dart';
import 'package:flutter/material.dart';

class WomensClothingPage extends StatelessWidget {
  const WomensClothingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(138, 60, 122, 1),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: const Text(
          "Women's Clothing Products",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      //
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: FutureBuilder<List<ProductModel>>(
          future: womensClothingProductsList(needToSort: false),
          builder: (context, snapshot) {
            // Loading State
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            // Error State
            if (snapshot.hasError) {
              return Center(
                child: Text("Error: ${snapshot.error}"),
              );
            }

            // Empty Response data array
            if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(
                child: Text("No products found"),
              );
            }

            // Success State
            List<ProductModel> womensClothingProducts = snapshot.data!.toList();
            return ProductsGrid(products: womensClothingProducts);
          },
        ),
      ),
    );
  }
}