import 'package:fake_store/widgets/home_page_button.dart';
import 'package:flutter/material.dart';

class HomePageButtonsRow extends StatelessWidget {
  final List<Map<String, String>> buttons;
  const HomePageButtonsRow({super.key, required this.buttons});

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
