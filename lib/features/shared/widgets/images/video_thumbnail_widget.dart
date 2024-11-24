import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/utils/replace_file_format_util.dart';
import 'package:bloc_architecture/features/shared/widgets/images/image_handler_widget.dart';
import 'package:flutter/material.dart';

class VideoThumbnailWidget extends StatelessWidget {
  const VideoThumbnailWidget({
    super.key,
    required this.videoThumbnail,
    required this.thumbnailHeight,
    required this.thumbnailWidth,
    this.isWithPlayIcon = true,
  });

  final String videoThumbnail;
  final double thumbnailHeight;
  final double thumbnailWidth;
  final bool isWithPlayIcon;

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final double width = context.width;
    return Stack(
      children: [
        ImageHandlerWidget(
          imageUrl: replaceFileFormat(videoThumbnail, '.jpeg'),
          height: thumbnailHeight,
          width: thumbnailWidth,
        ),
        if (isWithPlayIcon)
          Align(
            alignment: Alignment.center,
            child: Container(
              height: height * 0.03,
              width: width * 0.1,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black45,
              ),
              child: Icon(
                Icons.play_arrow,
                size: height * 0.02,
                color: Colors.white,
              ),
            ),
          ),
      ],
    );
  }
}
