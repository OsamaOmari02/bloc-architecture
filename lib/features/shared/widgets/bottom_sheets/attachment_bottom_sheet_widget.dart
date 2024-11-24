import 'package:bloc_architecture/core/constants/app_colors_constants.dart';
import 'package:bloc_architecture/features/shared/extensions/go_router_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/providers/multi_files_picker_provider.dart';
import 'package:bloc_architecture/features/shared/widgets/general/text_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../../../../../core/exceptions/general/file_max_size_exceeded_exception.dart';
import '../../../../../core/exceptions/general/files_max_number_exceeded_exception.dart';
import '../../../../../core/l10n/generated/l10n.dart';
import '../../../../../core/services/toast_message_service.dart';

class AttachmentBottomSheetWidget extends StatelessWidget {
  const AttachmentBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final MultiFilesPickerProvider<dynamic> multiFilesPickerProvider =
        context.read<MultiFilesPickerProvider<dynamic>>();
    return Container(
      padding: EdgeInsets.all(height * 0.02),
      height: height * 0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _PickFilesWidget(
            onTap: () => pickFiles(
                context, multiFilesPickerProvider.addFilteredImagesToList(10)),
            icon: Icons.image_outlined,
            text: context.appLocalization.images,
          ),
          _PickFilesWidget(
            onTap: () => pickFiles(
                context, multiFilesPickerProvider.addFilteredDocsToList(10)),
            icon: Icons.file_copy_outlined,
            text: context.appLocalization.documents,
          ),
        ],
      ),
    );
  }
}

void pickFiles(BuildContext context, Future function) async {
  final AppLocalization appLocalization = context.appLocalization;
  try {
    await function;
    if (context.mounted) {
      context.safePop();
    }
  } on FilesMaxNumberExceededException {
    ToastMessageService.showErrorMessage(
      appLocalization.cantPickMoreThan5Files,
    );
  } on FileMaxSizeExceededException {
    ToastMessageService.showErrorMessage(
      appLocalization.cantPickFilesTooLarge,
    );
  } catch (e) {
    return;
  }
}

class _PickFilesWidget extends StatelessWidget {
  const _PickFilesWidget({
    required this.onTap,
    required this.icon,
    required this.text,
  });

  final void Function()? onTap;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final double width = context.width;
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: height * 0.03,
            backgroundColor: AppColors.primary,
            child: Icon(
              icon,
              size: height * 0.04,
              color: Colors.white,
            ),
          ),
          TextWidget(text: text, size: width * 0.025),
        ],
      ),
    );
  }
}
