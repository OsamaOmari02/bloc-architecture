import 'dart:typed_data';

import 'package:video_thumbnail/video_thumbnail.dart';

class ThumbnailGeneratorService {
  ThumbnailGeneratorService._();

  static Future<Uint8List?> generate(String videoFile,
      {double? height, double? width}) async {
    final int maxHeight = height?.toInt() ?? 300;
    final int maxWidth = height?.toInt() ?? 300;
    final Uint8List? uInt8list = await VideoThumbnail.thumbnailData(
      video: videoFile,
      imageFormat: ImageFormat.JPEG,
      maxWidth: maxWidth,
      maxHeight: maxHeight,
      quality: 100,
    );
    return uInt8list;
  }
}
