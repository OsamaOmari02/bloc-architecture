List<String> getFiles(List filesJson) {
  final List<String> files = [];
  for (var file in filesJson) {
    files.add(file['url']);
  }
  return files;
}
