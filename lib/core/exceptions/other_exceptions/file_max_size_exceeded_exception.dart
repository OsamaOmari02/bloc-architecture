
import '../../strings/failures_messages.dart';

class FileMaxSizeExceededException implements Exception {
  @override
  String toString() {
    return MAX_SIZE_EXCEEDED_FAILURE_MESSAGE;
  }
}
