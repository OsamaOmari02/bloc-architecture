import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/utils/get_file_length_util.dart';
import 'package:bloc_architecture/features/shared/widgets/general/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FileLengthFutureBuilderWidget extends StatelessWidget {
  const FileLengthFutureBuilderWidget({
    super.key,
    required this.file,
  });

  final XFile file;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.height * 0.01),
      child: FutureBuilder<String>(
        future: getFileLengthInKBOrMB(file),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return TextWidget(
              text: context.appLocalization.loading,
              size: context.width * 0.025,
              color: Colors.grey,
            );
          } else if (snapshot.hasError) {
            return TextWidget(
              text: context.appLocalization.unExpectedError,
              size: context.width * 0.025,
              color: Colors.red,
            );
          } else {
            return TextWidget(
              text: snapshot.data ?? context.appLocalization.unknown,
              size: context.width * 0.025,
              color: Colors.grey,
            );
          }
        },
      ),
    );
  }
}
