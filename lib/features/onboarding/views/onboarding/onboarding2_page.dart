import 'package:bloc_architecture/features/onboarding/views/onboarding/widgets/page_number_circle_widget.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/routing_constants.dart';
import '../../../shared/widgets/general/text_widget.dart';
import '../../../shared/widgets/images/asset_image_widget.dart';
import 'widgets/onboarding_pages_indicator_widget.dart';
import 'package:bloc_architecture/features/shared/widgets/images/svg_image_widget.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';

import 'widgets/onboarding_skip_button_widget.dart';

class Onboarding2Page extends StatelessWidget {
  const Onboarding2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final double width = context.width;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.6,
            child: AssetImageWidget(
              imagePath: 'onboarding_background_image.png',
              height: height,
              width: width,
              boxFit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF02DFC4).withOpacity(0.6),
                  Colors.transparent,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Container(
            width: width * 0.8,
            padding: EdgeInsets.all(height * 0.01),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(height * 0.01),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: height * 0.02),
                SvgImageWidget(
                  imagePath: 'app_logo.svg',
                  height: height * 0.045,
                ),
                SizedBox(height: height * 0.03),
                AssetImageWidget(
                  imagePath: 'onboarding2.png',
                  height: height * 0.26,
                  width: width * 0.4,
                  cacheHeight: height * 0.5,
                  cacheWidth: width * 0.8,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.015),
                  child: TextWidget(
                    text: context.appLocalization.onboarding2Title,
                    size: width * 0.05,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                  child: TextWidget(
                    text: context.appLocalization.onboarding2Body,
                    size: width * 0.035,
                    textAlign: TextAlign.center,
                    color: Colors.black45,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: height * 0.025,
                    horizontal: width * 0.04,
                  ),
                  child: const Divider(thickness: 0.1),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                    vertical: height * 0.01,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        children: [
                          OnboardingPagesIndicatorWidget(
                            pageNumber: 2,
                          ),
                          OnboardingSkipButtonWidget(),
                        ],
                      ),
                      PageNumberCircleWidget(
                        currentPage: 2,
                        onNextPage: () =>
                            context.pushNamed(RoutingConstants.onboarding3Page),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
