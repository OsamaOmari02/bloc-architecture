import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class FilesPickerService {
  static final ImagePicker _imagePicker = ImagePicker();
  static final FilePicker _filePicker = FilePicker.platform;

  static Future<String?>? pickImageFromGallery() async {
    try {
      final XFile? takenPhoto = await _imagePicker.pickImage(
          source: ImageSource.gallery,
          maxHeight: 480,
          maxWidth: 640,
          imageQuality: 50);
      if (takenPhoto != null) {
        return takenPhoto.path;
      }
    } on PlatformException {
      openAppSettings();
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  static Future<List<String?>?> pickMultiFiles() async {
    final List<String?> files = [];
    try {
      final result = await _filePicker.pickFiles(
        allowMultiple: true,
        type: FileType.custom,
        allowedExtensions: ['bmp', 'jpg', 'jpeg', 'png', 'mp4', 'mov'],
      );
      if (result == null) {
        return null;
      }
      for (PlatformFile file in result.files) {
        files.add(file.path);
      }
      return files;
    } on PlatformException {
      openAppSettings();
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
