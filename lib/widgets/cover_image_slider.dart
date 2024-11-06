import 'package:fake_store/widgets/container_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CoverImageSlider extends StatefulWidget {
  final List<String> coverImages;

  const CoverImageSlider({super.key, required this.coverImages});

  @override
  State<CoverImageSlider> createState() => _CoverImageSliderState();
}

class _CoverImageSliderState extends State<CoverImageSlider> {
  final CarouselSliderController _carouselSliderController =
      CarouselSliderController();

  @override
  void initState() {
    super.initState();
  }

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
            items: widget.coverImages.map((image) {
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
              autoPlay: true,
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
                curve: Curves.linear,
              ),
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
                curve: Curves.linear,
              ),
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
