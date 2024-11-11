import 'package:fake_store/widgets/cover_image_slider.dart';
import 'package:fake_store/widgets/home_page_buttons_row.dart';
import 'package:fake_store/widgets/products_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const List<String> coverImages = [
    "assets/images/electronics-cover.jpg",
    "assets/images/jewelery-cover.jpg",
    "assets/images/men's_clothing_cover.jpg",
    "assets/images/women's_clothing_cover.jpg"
  ];

  static const List<Map<String, String>> homePageButtons = [
    {"title": "All", "iconPath": "assets/icons/all.png"},
    {"title": "Electronics", "iconPath": "assets/icons/electronics.png"},
    {"title": "Jewelery", "iconPath": "assets/icons/jewelery.png"},
    {"title": "Men's Clothing", "iconPath": "assets/icons/mens-clothing.png"},
    {
      "title": "Women's Clothing",
      "iconPath": "assets/icons/womens-clothing.png"
    },
  ];

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(138, 60, 122, 1),
        leading: const Icon(
          Icons.store,
          color: Colors.white,
          size: 30,
        ),
        title: const Text(
          "Fake Store",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: CustomScrollView(
          physics: PageScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CoverImageSlider(coverImages: coverImages),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            HomePageButtonsRow(
              buttons: homePageButtons,
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 40,
                child: Text(
                  "Some of the products:",
                  style: TextStyle(
                    color: Color.fromRGBO(138, 60, 122, 1),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 15,
              ),
            ),
            ProductsList()
          ],
        ),
      ),
    );
  }
}
