String replaceFileFormat(String filePath, String newFileFormat) {
  final int lastDotIndex = filePath.lastIndexOf('.');
  if (!newFileFormat.startsWith('.')) {
    newFileFormat = '.$newFileFormat';
  }
  final String reformattedFilePath =
      '${filePath.substring(0, lastDotIndex)}$newFileFormat';
  return reformattedFilePath;
}
