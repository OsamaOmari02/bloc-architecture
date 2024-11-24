import 'package:bloc_architecture/core/exceptions/general/files_max_number_exceeded_exception.dart';
import 'package:bloc_architecture/core/services/files_picker_service.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MultiFilesPickerProvider<T> extends ChangeNotifier {
  final List<XFile> files = [];

  Future<void> addFilteredImagesToList(int limit) async {
    final List<XFile?>? pickedFiles =
        await FilesPickerService.pickMultiImages();
    if (pickedFiles != null && pickedFiles.length + files.length <= limit) {
      for (XFile? file in pickedFiles) {
        files.add(file!);
      }
    } else if (pickedFiles != null &&
        pickedFiles.length + files.length > limit) {
      throw FilesMaxNumberExceededException();
    }
    pickedFiles?.clear();
    notifyListeners();
  }

  Future<void> addFilteredDocsToList(int limit) async {
    final List<XFile?>? pickedFiles = await FilesPickerService.pickMultiDocs();
    if (pickedFiles != null && pickedFiles.length + files.length <= limit) {
      for (XFile? file in pickedFiles) {
        files.add(file!);
      }
    } else if (pickedFiles != null &&
        pickedFiles.length + files.length > limit) {
      throw FilesMaxNumberExceededException();
    }
    pickedFiles?.clear();
    notifyListeners();
  }

  void removeAt(int index) {
    files.removeAt(index);
    notifyListeners();
  }

  void clear() {
    files.clear();
    notifyListeners();
  }

  @override
  void dispose() {
    files.clear();
    super.dispose();
  }
}
