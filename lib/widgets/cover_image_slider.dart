import 'package:fake_store/widgets/container_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CoverImageSlider extends StatelessWidget {
  final List<String> coverImages;

  CoverImageSlider({super.key, required this.coverImages});

  final CarouselSliderController _carouselSliderController =
      CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 200,
        // maxWidth: double.infinity,
      ),
      child: Stack(
        children: [
          CarouselSlider(
            carouselController: _carouselSliderController,
            items: coverImages.map((image) {
              return ContainerImage(
                width: double.infinity,
                height: 200,
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
                imagePath: image,
              );
            }).toList(),
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              viewportFraction: 1.0,
              aspectRatio: 2.0,
              initialPage: 0,
              enableInfiniteScroll: true,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () => _carouselSliderController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () => _carouselSliderController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear),
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
