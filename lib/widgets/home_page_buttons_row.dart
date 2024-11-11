import 'package:fake_store/views/all_products_page.dart';
import 'package:fake_store/views/electronics_products_page.dart';
import 'package:fake_store/views/jewelery_products_page.dart';
import 'package:fake_store/views/mens_clothing_page.dart';
import 'package:fake_store/views/womens_clothing_page.dart';
import 'package:fake_store/widgets/home_page_button.dart';
import 'package:flutter/material.dart';

class HomePageButtonsRow extends StatelessWidget {
  final List<Map<String, String>> buttons;

  const HomePageButtonsRow({
    super.key,
    required this.buttons,
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
                        builder: (context) => const AllProductsPage(),
                      ),
                    );
                    break;
                  case "Electronics":
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ElectronicsProductsPage(),
                      ),
                    );
                    break;
                  case "Jewelery":
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const JeweleryProductsPage(),
                      ),
                    );
                    break;
                  case "Men's Clothing":
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MensClothingPage(),
                      ),
                    );
                    break;
                  case "Women's Clothing":
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const WomensClothingPage(),
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
