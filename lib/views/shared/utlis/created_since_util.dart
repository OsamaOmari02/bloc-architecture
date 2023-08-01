

String createdAt(String createdAt) {
  final DateTime dateTimeCreatedAt = DateTime.parse(createdAt);
  final Duration durationSinceCreated = DateTime.now().difference(dateTimeCreatedAt);
  if (durationSinceCreated.inDays > 0) {
    return "منذ ${durationSinceCreated.inDays} يوم";
  } else if (durationSinceCreated.inHours > 0) {
    return "منذ ${durationSinceCreated.inHours} ساعة";
  } else if (durationSinceCreated.inMinutes > 0) {
    return "منذ ${durationSinceCreated.inMinutes} دقيقة";
  } else {
    return "منذ دقيقة";
  }
}