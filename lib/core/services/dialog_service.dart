import 'package:bloc_architecture/features/shared/extensions/go_router_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/providers/image_picker_provider.dart';
import 'package:bloc_architecture/features/shared/widgets/general/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../features/shared/providers/camera_provider.dart';
import '../../features/shared/widgets/general/text_widget.dart';
import '../../features/shared/widgets/images/svg_image_widget.dart';
import '../constants/app_colors_constants.dart';
import 'navigation_service.dart';

class DialogService {
  DialogService._();
  static Future<String?>? showBasicAlertDialog({
    required BuildContext context,
    required String text,
  }) async {
    return await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        final double height = context.height;
        final double width = context.width;
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(height * 0.02),
          ),
          elevation: 2,
          backgroundColor: Colors.white,
          title: SvgImageWidget(
            imagePath: 'alert_check.svg',
            height: height * 0.06,
          ),
          content: FittedBox(
            child: Text(
              text,
              style: _textStyle(
                  context, Colors.black, width * 0.04, FontWeight.bold),
            ),
          ),
          actions: [
            SizedBox(
              width: width,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(AppColors.primary),
                ),
                onPressed: context.safePop,
                child: Text(
                  context.appLocalization.goBack,
                  style: _textStyle(context, Colors.white, width * 0.035),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  static Future<String?>? showAlertDialogWithOptions({
    required context,
    required String text,
    required VoidCallback onPressed,
    String? option1,
    String? option2,
  }) async =>
      await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          final double height = context.height;
          final double width = context.width;
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(height * 0.02),
            ),
            elevation: 2,
            backgroundColor: Colors.white,
            title: SvgImageWidget(
              imagePath: 'alert_options.svg',
              color: AppColors.primary,
              height: height * 0.06,
            ),
            content: SizedBox(
              height: height * 0.22,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: _textStyle(
                      context,
                      Colors.black,
                      width * 0.04,
                      FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: height * 0.02),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                                  AppColors.primary,
                                ),
                              ),
                              onPressed: onPressed,
                              child: Text(
                                option1 ?? context.appLocalization.yes,
                                style: _textStyle(
                                  context,
                                  Colors.white,
                                  width * 0.03,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: width * 0.02),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(
                                    Colors.white,
                                  ),
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(height * 0.01),
                                      side: const BorderSide(
                                        color: AppColors.primary,
                                      ),
                                    ),
                                  ),
                                ),
                                onPressed: () => context.safePop(),
                                child: Text(
                                  option2 ?? context.appLocalization.no,
                                  style: _textStyle(
                                    context,
                                    AppColors.primary,
                                    width * 0.03,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      );

  static Future<bool?> showExitAppDialog(BuildContext context) async {
    return await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        final double height = context.height;
        final double width = context.width;
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(height * 0.02),
          ),
          elevation: 2,
          backgroundColor: Colors.white,
          title: SvgImageWidget(
            imagePath: 'alert_options.svg',
            height: height * 0.06,
          ),
          content: SizedBox(
            height: height * 0.11,
            child: Column(
              children: [
                FittedBox(
                  child: Text(
                    context.appLocalization.sureExitApp,
                    style: _textStyle(
                      context,
                      Colors.black,
                      width * 0.04,
                      FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.02),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.lightBlue)),
                          onPressed: () => NavigationService.navigateExitApp(),
                          child: Text(
                            context.appLocalization.yes,
                            style:
                                _textStyle(context, Colors.white, width * 0.03),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: width * 0.02),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.white),
                              shape: WidgetStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(height * 0.01),
                                  side:
                                      const BorderSide(color: Colors.lightBlue),
                                ),
                              ),
                            ),
                            onPressed: () => context.safePop(),
                            child: Text(
                              context.appLocalization.no,
                              style: _textStyle(
                                  context, Colors.lightBlue, width * 0.03),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static Future<XFile?> showImagePickerDialog(BuildContext context) async {
    final double height = context.height;
    final double width = context.width;
    XFile? imagePath;
    await showDialog(
      context: context,
      builder: (_) => Dialog(
        child: Container(
          padding: EdgeInsets.all(height * 0.02),
          height: height * 0.15,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () async {
                  await context.read<CameraProvider>().takePhoto();
                  if (context.mounted) {
                    imagePath = context.read<CameraProvider>().image;
                    context.safePop();
                  }
                },
                child: TextWidget(
                  text: context.appLocalization.takeAPhoto,
                  size: width * 0.035,
                ),
              ),
              const Divider(thickness: 0.1),
              InkWell(
                onTap: () async {
                  await context
                      .read<ImagePickerProvider>()
                      .pickImageFromGallery();
                  if (context.mounted) {
                    imagePath = context.read<ImagePickerProvider>().image;
                    context.safePop();
                  }
                },
                child: TextWidget(
                  text: context.appLocalization.chooseFromGallery,
                  size: width * 0.035,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return imagePath;
  }

  static Future<void> showLoadingIndicator(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const AlertDialog(
        backgroundColor: Colors.white,
        title: LoadingWidget(),
      ),
    );
  }

  static TextStyle _textStyle(BuildContext context, color, size,
          [fontWeight]) =>
      TextStyle(fontSize: size, fontWeight: fontWeight, color: color);
}
