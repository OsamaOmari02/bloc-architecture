import 'package:image_picker/image_picker.dart';

Future<String> getFileLengthInKBOrMB(XFile file) async {
  final int fileSizeInBytes = await file.length();
  final double fileSizeInKB = fileSizeInBytes / 1024;

  if (fileSizeInKB < 1024) {
    return '${fileSizeInKB.toStringAsFixed(2)} KB';
  } else {
    final double fileSizeInMB = fileSizeInKB / 1024;
    return '${fileSizeInMB.toStringAsFixed(2)} MB';
  }
}
