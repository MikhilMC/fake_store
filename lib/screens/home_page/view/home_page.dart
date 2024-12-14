import 'package:fake_store/screens/home_page/cubit/home_page_cubit.dart';
import 'package:fake_store/screens/single_product/view/single_product_item_page.dart';
import 'package:fake_store/widgets/cover_image_slider.dart';
import 'package:fake_store/widgets/home_page_buttons_row.dart';
import 'package:fake_store/widgets/product_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
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
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<HomePageCubit>().fetchProducts(false, 6);
  }

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
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: CustomScrollView(
          physics: const PageScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(
              child: CoverImageSlider(coverImages: HomePage.coverImages),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            const HomePageButtonsRow(
              buttons: HomePage.homePageButtons,
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            const SliverToBoxAdapter(
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
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 15,
              ),
            ),
            BlocBuilder<HomePageCubit, HomePageState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const SliverToBoxAdapter(
                    child: Center(
                      child: Text("Initializing..."),
                    ),
                  ),
                  loading: () => const SliverToBoxAdapter(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  success: (products) {
                    return SliverList.separated(
                      itemBuilder: (context, index) {
                        return ProductContainer(
                          title: products[index].title,
                          price: products[index].price,
                          rate: products[index].rating.rate,
                          count: products[index].rating.count,
                          imageUrl: products[index].image,
                          category: products[index].category,
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
                          id: products[index].id,
                          heroId: "hero-${products[index].id}",
                        );
                      },
                      separatorBuilder: (_, __) => const SizedBox(
                        height: 20,
                      ),
                      itemCount: products.length,
                    );
                  },
                  error: (errorMessage) => SliverToBoxAdapter(
                    child: Center(
                      child: Text(errorMessage),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
