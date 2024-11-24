extension MapExtension on Map {
  void removeNullOrEmptyValues() {
    return removeWhere(
      (key, value) => value == null || value.toString().isEmpty,
    );
  }
}
