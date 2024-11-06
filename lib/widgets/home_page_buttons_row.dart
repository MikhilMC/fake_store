import 'package:fake_store/views/all_products_page.dart';
import 'package:fake_store/views/electronics_products_page.dart';
import 'package:fake_store/views/jewelery_products_page.dart';
import 'package:fake_store/views/mens_clothing_page.dart';
import 'package:fake_store/views/womens_clothing_page.dart';
import 'package:fake_store/widgets/home_page_button.dart';
import 'package:flutter/material.dart';

class HomePageButtonsRow extends StatelessWidget {
  final List<Map<String, String>> buttons;
  final List<Map<String, dynamic>> products;
  final List<Map<String, dynamic>> electronicsProducts;
  final List<Map<String, dynamic>> jeweleryProducts;
  final List<Map<String, dynamic>> mensClothingProducts;
  final List<Map<String, dynamic>> womensClothingProducts;

  const HomePageButtonsRow({
    super.key,
    required this.buttons,
    required this.products,
    required this.electronicsProducts,
    required this.jeweleryProducts,
    required this.mensClothingProducts,
    required this.womensClothingProducts,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 130,
        child: ListView.separated(
          itemCount: buttons.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return HomePageButton(
              buttonName: buttons[index]['title'].toString(),
              buttonIconPath: buttons[index]['iconPath'].toString(),
              onClick: () {
                switch (buttons[index]["title"].toString()) {
                  case "All":
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AllProductsPage(
                          products: products,
                        ),
                      ),
                    );
                    break;
                  case "Electronics":
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ElectronicsProductsPage(
                          electronicsProducts: electronicsProducts,
                        ),
                      ),
                    );
                    break;
                  case "Jewelery":
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => JeweleryProductsPage(
                          jeweleryProducts: jeweleryProducts,
                        ),
                      ),
                    );
                    break;
                  case "Men's Clothing":
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MensClothingPage(
                          mensClothingProducts: mensClothingProducts,
                        ),
                      ),
                    );
                    break;
                  case "Women's Clothing":
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WomensClothingPage(
                          womensClothingProducts: womensClothingProducts,
                        ),
                      ),
                    );
                    break;
                }
              },
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 10,
            );
          },
        ),
      ),
    );
  }
}
