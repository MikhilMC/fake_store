import 'package:fake_store/widgets/products_grid.dart';
import 'package:flutter/material.dart';

class WomensClothingPage extends StatelessWidget {
  final List<Map<String, dynamic>> womensClothingProducts;
  const WomensClothingPage({super.key, required this.womensClothingProducts});

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
            Icons.arrow_back,
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
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ProductsGrid(products: womensClothingProducts),
      ),
    );
  }
}
