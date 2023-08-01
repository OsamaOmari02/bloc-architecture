import 'package:bloc_architecture/views/shared/components/cached_network_image_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../utlis/media_query_util.dart';

class ImagesAndVideosSliderWidget extends StatelessWidget {
  const ImagesAndVideosSliderWidget({
    Key? key,
    required this.height,
    required this.files,
  }) : super(key: key);

  final double height;
  final String files;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: 3,
        options: _carouselOptions,
        itemBuilder: (context, index, realIndex) {
          return ClipRRect(
              borderRadius: BorderRadius.circular(getHeight(context) * 0.01),
              child: Stack(children: [
                CachedNetworkImageWidget(
                  imageUrl: files[index],
                  fit: BoxFit.contain,
                  height: getHeight(context),
                  width: getWidth(context),
                ),
              ]));
        });
  }

  CarouselOptions get _carouselOptions => CarouselOptions(
        height: height,
        aspectRatio: 16 / 9,
        scrollPhysics: const BouncingScrollPhysics(),
        viewportFraction: 1,
        enableInfiniteScroll: false,
        autoPlay: false,
        enlargeCenterPage: true,
        enlargeFactor: 0.6,
        scrollDirection: Axis.horizontal,
      );
}
