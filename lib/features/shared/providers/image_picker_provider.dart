import 'package:bloc_architecture/core/services/image_picker_service.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerProvider<T> extends ChangeNotifier {
  XFile? image;
  Future<void> pickImageFromGallery() async {
    final XFile? pickedImage = await ImagePickerService.pickImageFromGallery();
    if (pickedImage != null) {
      image = pickedImage;
    }
    notifyListeners();
  }

  clear() {
    image = null;
    notifyListeners();
  }

  @override
  void dispose() {
    image = null;
    super.dispose();
  }
}
