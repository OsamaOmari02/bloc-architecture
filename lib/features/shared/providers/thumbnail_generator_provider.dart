// import 'package:flutter/cupertino.dart';

// import '../../../../core/services/thumbnail_generator_service.dart';
// import 'files_picker_provider.dart';

// class ThumbnailGeneratorProvider extends ChangeNotifier {
//   bool isLoading = false;
//   String thumbnail = '';

//   Future<void> generateThumbnail(
//       FilesPickerProvider filesPickerProvider, String videoUrl) async {
//     isLoading = true;
//     notifyListeners();
//     try {
//       thumbnail = await ThumbnailGeneratorService.generateThumbnail(videoUrl);
//     } catch (e) {
//       return;
//     } finally {
//       isLoading = false;
//       notifyListeners();
//     }
//   }
// }
