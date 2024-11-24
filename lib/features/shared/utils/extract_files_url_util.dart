List<String>? extractFilesUrl(List<dynamic>? filesJson) {
  return filesJson?.map<String>((file) => file['url']).toList();
}
