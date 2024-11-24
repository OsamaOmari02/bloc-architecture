import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/services/camera_service.dart';

class CameraProvider extends ChangeNotifier {
  XFile? image;
  XFile? videoThumbnail;
  XFile? video;
  bool isLoading = false;

  Future<void> takePhoto() async {
    isLoading = true;
    notifyListeners();
    image = await CameraService.takePhoto();
    isLoading = false;
    notifyListeners();
  }

  @override
  void dispose() {
    clear();
    super.dispose();
  }

  void clear() {
    image = null;
    videoThumbnail = null;
    video = null;
  }

  void clearAndNotifyListeners() {
    clear();
    notifyListeners();
  }
}
