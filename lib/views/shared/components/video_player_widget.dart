import 'package:bloc_architecture/views/shared/components/loading_widget.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController controller;
  ChewieController? chewieController;
  bool isError = false;

  Future<void> initVideoPlayer() async {
    try {
      controller = VideoPlayerController.network(widget.url);
      await controller.initialize();
      setState(() {
        chewieController = ChewieController(
          showOptions: false,
          videoPlayerController: controller,
          aspectRatio: controller.value.aspectRatio,
          errorBuilder: (context, errorMessage) =>
              const Icon(Icons.error_outline),
        );
      });
    } catch (e) {
      setState(() {
        isError = true;
      });
    }
  }

  @override
  void initState() {
    initVideoPlayer();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return chewieController != null
        ? Chewie(controller: chewieController!)
        : isError == true
            ? const Icon(Icons.error_outline)
            : const LoadingWidget();
  }
}
