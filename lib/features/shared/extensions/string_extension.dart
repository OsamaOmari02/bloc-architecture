extension StringExtension on String {
  String capitalizeFirstLetter() =>
      '${this[0].toUpperCase()}${replaceRange(0, 1, '')}';
  String makeFirstLetterLowerCase() =>
      '${this[0].toLowerCase()}${replaceRange(0, 1, '')}';
}
