import 'dart:math';

String generateRandomId() {
  final Random random = Random();
  final int timestamp = DateTime.now().millisecondsSinceEpoch;
  final int randomInt = random.nextInt(999999);
  return '$timestamp$randomInt';
}