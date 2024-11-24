import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class FilesPickerService {
  FilesPickerService._();
  static final FilePicker _filePicker = FilePicker.platform;

  static Future<XFile?>? pickImageFromGallery() async {
    try {
      final FilePickerResult? image = await _filePicker.pickFiles(
        type: FileType.image,
        allowMultiple: false,
      );
      if (image == null) {
        return null;
      }
      return image.files.first.xFile;
    } on PlatformException {
      openAppSettings();
    } catch (e) {
      return null;
    }
    return null;
  }

  static Future<XFile?>? pickVideoFromGallery() async {
    try {
      final FilePickerResult? video = await _filePicker.pickFiles(
        type: FileType.video,
        allowMultiple: false,
      );
      if (video == null) {
        return null;
      }
      return video.files.first.xFile;
    } on PlatformException {
      openAppSettings();
    } catch (e) {
      log(e.toString());
      return null;
    }
    return null;
  }

  static Future<List<XFile?>?> pickMultiFiles() async {
    final List<XFile?> files = [];
    try {
      final FilePickerResult? result = await _filePicker.pickFiles(
        allowMultiple: true,
        allowedExtensions: [
          'jpg',
          'png',
          'jpeg',
          'bmp',
          'pdf',
          'docs',
          'docx',
          'doc',
          'pptx'
        ],
        type: FileType.custom,
      );
      if (result == null) {
        return null;
      }
      for (PlatformFile file in result.files) {
        files.add(file.xFile);
      }
      return files;
    } on PlatformException {
      openAppSettings();
    } catch (e) {
      return null;
    }
    return null;
  }

  static Future<List<XFile?>?> pickMultiMedia() async {
    final List<XFile?> files = [];
    try {
      final FilePickerResult? result = await _filePicker.pickFiles(
        allowMultiple: true,
        type: FileType.media,
      );
      if (result == null) {
        return null;
      }
      for (PlatformFile file in result.files) {
        files.add(file.xFile);
      }
      return files;
    } on PlatformException {
      openAppSettings();
    } catch (e) {
      return null;
    }
    return null;
  }

  static Future<List<XFile?>?> pickMultiDocs() async {
    final List<XFile?> files = [];
    try {
      final FilePickerResult? result = await _filePicker.pickFiles(
        allowMultiple: true,
        allowedExtensions: ['pdf', 'docs', 'docx', 'doc', 'pptx'],
        type: FileType.custom,
      );
      if (result == null) {
        return null;
      }
      for (PlatformFile file in result.files) {
        files.add(file.xFile);
      }
      return files;
    } on PlatformException {
      openAppSettings();
    } catch (e) {
      return null;
    }
    return null;
  }

  static Future<List<XFile?>?> pickMultiImages() async {
    final List<XFile?> images = [];
    try {
      final FilePickerResult? result = await _filePicker.pickFiles(
        allowMultiple: true,
        type: FileType.image,
      );
      if (result == null) {
        return null;
      }
      for (PlatformFile file in result.files) {
        images.add(file.xFile);
      }
      return images;
    } on PlatformException {
      openAppSettings();
    } catch (e) {
      return null;
    }
    return null;
  }
}
