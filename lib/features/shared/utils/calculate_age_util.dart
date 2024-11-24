import 'package:intl/intl.dart';

int calculateAge(String birthDay) {
  final DateFormat format = DateFormat('yyyy-MM-dd');
  final DateTime birthDate = format.parse(birthDay);
  final today = DateTime.now();
  int age = today.year - birthDate.year;

  // Adjust for upcoming birthday this year
  if (today.month < birthDate.month ||
      (today.month == birthDate.month && today.day < birthDate.day)) {
    age--;
  }

  return age;
}
