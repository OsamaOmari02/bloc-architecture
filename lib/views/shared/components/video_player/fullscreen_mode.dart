import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

import '../../../../core/services/navigation_service.dart';
import '../../themes/light_theme.dart';
import '../../utils/media_query_util.dart';
import '../../utils/thme_mode_config.dart';

class FullScreenMode extends StatefulWidget {
  const FullScreenMode({
    Key? key,
    required this.url,
    required this.controller,
  }) : super(key: key);

  final String url;
  final VideoPlayerController controller;
  static bool isFullScreen = false;

  @override
  State<FullScreenMode> createState() => _FullScreenModeState();
}

class _FullScreenModeState extends State<FullScreenMode> {
  Future<void> setLandscape() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.black,
    ));
  }

  Future<void> exitFullScreen() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    themeModeConfig();
  }

  @override
  void initState() {
    super.initState();
    FullScreenMode.isFullScreen = true;
    setLandscape();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        exitFullScreen()
            .then((value) => NavigationService.navigatePop(context));
        return true;
      },
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(bottom: getHeight(context) * 0.005),
          color: Colors.black,
          child: Stack(children: [
            Center(
              child: AspectRatio(
                  aspectRatio: widget.controller.value.aspectRatio,
                  child: VideoPlayer(widget.controller)),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  widget.controller.value.isPlaying
                      ? widget.controller.pause()
                      : widget.controller.play();
                });
              },
              child: Align(
                alignment: Alignment.center,
                child: widget.controller.value.isPlaying
                    ? null
                    : Container(
                        height: getHeight(context) * 0.17,
                        width: getWidth(context) * 0.2,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black45,
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          size: getHeight(context) * 0.13,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                onPressed: () {
                  exitFullScreen().then((value) {
                    FullScreenMode.isFullScreen = false;
                    NavigationService.navigatePop(context);
                  });
                },
                icon: Container(
                    height: getHeight(context) * 0.1,
                    width: getWidth(context) * 0.04,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black45,
                    ),
                    child:
                        const Icon(Icons.fullscreen_exit, color: Colors.white)),
              ),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: getHeight(context) * 0.02,
                    child: VideoProgressIndicator(
                      widget.controller,
                      allowScrubbing: true,
                      colors: VideoProgressColors(
                        playedColor: lightFirstColor,
                      ),
                    ),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
