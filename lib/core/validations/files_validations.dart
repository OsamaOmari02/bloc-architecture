class FilesValidations {
  static int maxImageSize = 5 * 1024 * 1024; // 5 MB in bytes
  static int maxVideoSize = 25 * 1024 * 1024; // 25 MB in bytes

  static bool isVideo(String? extension) {
    return extension!.toLowerCase().endsWith('mp4') ||
        extension.toLowerCase().endsWith('mov');
  }

  static isImage(String? extension) {
    return extension!.toLowerCase().endsWith('png') ||
        extension.toLowerCase().endsWith('jpeg') ||
        extension.toLowerCase().endsWith('jpg') ||
        extension.toLowerCase().endsWith('bmp');
  }
}
