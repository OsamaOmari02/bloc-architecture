import 'package:bloc_architecture/core/services/toast_message_service.dart';
import 'package:bloc_architecture/core/services/url_launcher_service.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';

class MakePhoneCallFilledWidget extends StatelessWidget {
  const MakePhoneCallFilledWidget({
    super.key,
    required this.phoneNumber,
  });

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        try {
          UrlLauncherService.makeAPhoneCall(phoneNumber);
        } catch (e) {
          ToastMessageService.showErrorMessage(
            context.appLocalization.unExpectedError,
          );
        }
      },
      child: CircleAvatar(
        radius: context.height * 0.02,
        child: Icon(
          Icons.call,
          color: Colors.white,
          size: context.height * 0.02,
        ),
      ),
    );
  }
}
