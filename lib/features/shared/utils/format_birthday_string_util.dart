import 'dart:developer';
import 'package:intl/intl.dart';

String formatBirthdayString(String originalDateString) {
  List<String> possibleFormats = [
    "EEE MMM dd yyyy HH:mm:ss 'GMT'Z", // Example: Mon Jan 31 2000 00:00:00 GMT+0100
    "EEE, dd MMM yyyy HH:mm:ss zzz", // Example: Thu, 21 Feb 2002 23:00:00 GMT
    "yyyy-MM-ddTHH:mm:ssZ", // Example: 2024-10-05T13:15:51.326Z (ISO format)
    "yyyy-MM-dd", // Example: 2000-01-31
    "MM/dd/yyyy", // Example: 01/31/2000
    "dd-MM-yyyy", // Example: 31-01-2000
  ];
  final DateFormat outputFormat = DateFormat('yyyy-MM-dd');
  for (String format in possibleFormats) {
    try {
      final DateFormat dateFormat = DateFormat(format);
      final DateTime parsedDate = dateFormat.parse(originalDateString);
      final String formattedDate = outputFormat.format(parsedDate);
      return formattedDate;
    } catch (e) {
      // Continue to try other formats if parsing fails
    }
  }
  log('Error: Unable to parse date - $originalDateString');
  return '';
}
