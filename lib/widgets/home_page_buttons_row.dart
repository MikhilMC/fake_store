import 'package:fake_store/screens/product_list_page/views/product_list_page.dart';
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
                        builder: (context) => const ProductListPage(
                          pageType: "all",
                          pageTitle: "All Products",
                        ),
                      ),
                    );
                    break;
                  case "Electronics":
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ProductListPage(
                          pageType: "electronics",
                          pageTitle: "Electronics Products",
                        ),
                      ),
                    );
                    break;
                  case "Jewelery":
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ProductListPage(
                          pageType: "jewelery",
                          pageTitle: "Jewelery Products",
                        ),
                      ),
                    );
                    break;
                  case "Men's Clothing":
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ProductListPage(
                          pageType: "men's clothing",
                          pageTitle: "Men's Clothing Products",
                        ),
                      ),
                    );
                    break;
                  case "Women's Clothing":
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ProductListPage(
                          pageType: "women's clothing",
                          pageTitle: "Women's Clothing Products",
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
