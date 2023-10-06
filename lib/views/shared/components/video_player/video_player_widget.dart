import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:video_player/video_player.dart';

import '../../themes/light_theme.dart';
import '../../utils/media_query_util.dart';
import 'fullscreen_mode.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController controller;
  bool isError = false;

  Future<void> initVideoPlayer() async {
    try {
      final Uri uri = Uri.parse(widget.url);
      controller = VideoPlayerController.networkUrl(uri)
        ..initialize();
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isError
        ? const Center(child: Icon(Icons.error_outline, color: Colors.red))
        : Stack(children: [
          Center(
            child: AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: VideoPlayer(controller)),
          ),
          InkWell(
            onTap: () {
              setState(() {
                controller.value.isPlaying
                    ? controller.pause()
                    : controller.play();
              });
            },
            child: Align(
              alignment: Alignment.center,
              child: controller.value.isPlaying
                  ? null
                  : Container(
                      height: getHeight(context) * 0.1,
                      width: getWidth(context) * 0.13,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black45,
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        size: getHeight(context) * 0.05,
                        color: Colors.white,
                      ),
                    ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              onPressed: () {
                PersistentNavBarNavigator.pushNewScreen(context,
                    screen: FullScreenMode(
                        url: widget.url, controller: controller),
                    withNavBar: false);
              },
              icon: Container(
                  height: getHeight(context) * 0.04,
                  width: getWidth(context) * 0.07,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black38,
                  ),
                  child: const Icon(Icons.fullscreen, color: Colors.white)),
            ),
          ),
          Directionality(
            textDirection: TextDirection.ltr,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: getHeight(context) * 0.013,
                  child: VideoProgressIndicator(
                    controller,
                    allowScrubbing: true,
                    colors: VideoProgressColors(
                      playedColor: lightFirstColor,
                    ),
                  ),
                )),
          )
        ]);
  }
}
