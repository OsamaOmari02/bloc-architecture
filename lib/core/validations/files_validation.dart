class FilesValidation {
  FilesValidation._();
  static int maxImageSize = 5 * 1024 * 1024; // 5 MB in bytes
  static int maxVideoSize = 25 * 1024 * 1024; // 25 MB in bytes
  static int maxDocSize = 1 * 1024 * 1024; // 1 MB in bytes
  static int maxVoiceSize = 10 * 1024 * 1024; // 10 MB in bytes

  static bool isVideo(String? format) {
    return format!.toLowerCase().endsWith('mp4') ||
        format.toLowerCase().endsWith('mov') ||
        format.toLowerCase().endsWith('m4a');
  }

  static bool isImage(String? format) {
    return format!.toLowerCase().endsWith('png') ||
        format.toLowerCase().endsWith('jpeg') ||
        format.toLowerCase().endsWith('jpg') ||
        format.toLowerCase().endsWith('bmp');
  }

  static bool isDocument(String? format) {
    return format!.toLowerCase().endsWith('pdf') ||
        format.toLowerCase().endsWith('docs') ||
        format.toLowerCase().endsWith('docx') ||
        format.toLowerCase().endsWith('doc') ||
        format.toLowerCase().endsWith('pptx');
  }

  static bool isVoice(String? format) {
    return format!.toLowerCase().endsWith('.mp3');
  }
}
