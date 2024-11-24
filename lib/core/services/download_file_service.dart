import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

class DownloadFileService {
  DownloadFileService._();
  static final HttpClient _httpClient = HttpClient();

  static Future<String?> downloadFile(String url, String fileName) async {
    try {
      HttpClientRequest request = await _httpClient.getUrl(Uri.parse(url));
      HttpClientResponse response = await request.close();
      Uint8List bytes = await consolidateHttpClientResponseBytes(response);
      String dir = (await getApplicationDocumentsDirectory()).path;
      File file = File('$dir/$fileName');
      if (!await file.exists()) {
        await file.writeAsBytes(bytes);
        return 'file exists';
      } else {
        return null;
      }
    } catch (e) {
      return '';
    }
  }

  static Future<File?> saveThumbnailToFile(
      Uint8List thumbnail, String fileName) async {
    try {
      Directory appDocDir = await getApplicationDocumentsDirectory();
      String thumbnailPath = "${appDocDir.path}/$fileName";
      File thumbnailFile = File(thumbnailPath);
      await thumbnailFile.writeAsBytes(thumbnail);
      return thumbnailFile;
    } catch (e) {
      return null;
    }
  }
}
