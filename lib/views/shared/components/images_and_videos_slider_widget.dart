import 'package:bloc_architecture/views/shared/components/cached_network_image.dart';
import 'package:bloc_architecture/views/shared/components/text_widget.dart';
import 'package:bloc_architecture/views/shared/components/video_player_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../utlis/media_query_util.dart';

class ImagesAndVideosSliderWidget extends StatelessWidget {
  const ImagesAndVideosSliderWidget(
      {Key? key, required this.height, required this.postOrProposal})
      : super(key: key);

  final double height;

  // ignore: prefer_typing_uninitialized_variables
  final postOrProposal;

  @override
  Widget build(BuildContext context) {
    final int imageCount = postOrProposal.images?.length ?? 0;
    final int videoCount = postOrProposal.videos?.length ?? 0;
    final int totalCount = imageCount + videoCount;
    return CarouselSlider.builder(
        itemCount: totalCount,
        itemBuilder: (context, index, realIndex) {
          if (index < imageCount) {
            return ClipRRect(
                borderRadius: BorderRadius.circular(getHeight(context) * 0.01),
                child: Stack(children: [
                  CachedNetworkImageWidget(
                    imageUrl: postOrProposal.images[index],
                    fit: BoxFit.contain,
                    height: getHeight(context),
                    width: getWidth(context),
                  ),
                  if (totalCount != 1)
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          height: getHeight(context) * 0.024,
                          width: getWidth(context) * 0.1,
                          child: TextWidget(
                            text: '${index + 1}/$totalCount',
                            size: getWidth(context) * 0.04,
                          )),
                    )
                ]));
          }
          return VideoPlayerWidget(url: postOrProposal.videos[index]);
        },
        options: _carouselOptions);
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
