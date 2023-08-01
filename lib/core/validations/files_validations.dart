class FilesValidations {
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
