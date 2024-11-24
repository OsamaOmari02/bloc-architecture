import 'package:bloc_architecture/features/shared/extensions/go_router_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/widgets/app_bars/shared_app_bar_with_back_button_widget.dart';
import 'package:flutter/material.dart';

import 'image_handler_widget.dart';

class ImageViewerPage extends StatelessWidget {
  const ImageViewerPage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SharedAppBarWithBackButtonWidget(),
      body: InkWell(
        onTap: context.safePop,
        child: Center(
          child: ImageHandlerWidget(
            imageUrl: imageUrl,
            height: context.height,
            width: context.width,
            boxFit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
