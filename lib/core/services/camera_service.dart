import 'package:image_picker/image_picker.dart';

class CameraService {
  CameraService._();
  static final ImagePicker _imagePicker = ImagePicker();

  static Future<XFile?> recordVideo() async {
    try {
      final XFile? video = await _imagePicker.pickVideo(
        source: ImageSource.camera,
        maxDuration: const Duration(minutes: 1),
      );
      return video;
    } catch (e) {
      return null;
    }
  }

  static Future<XFile?> takePhoto() async {
    try {
      final XFile? image = await _imagePicker.pickImage(
        source: ImageSource.camera,
        preferredCameraDevice: CameraDevice.front,
        imageQuality: 90,
      );
      return image;
    } catch (e) {
      return null;
    }
  }
}
