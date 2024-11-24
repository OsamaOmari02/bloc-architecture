import 'package:bloc_architecture/features/auth/controllers/cubits/verification_code/verification_code_cubit.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/widgets/general/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/app_colors_constants.dart';
import '../../../../../core/services/toast_message_service.dart';
import '../../../../shared/cubits/timer/timer_cubit.dart';
import '../../../../shared/widgets/general/loading_widget.dart';

class ResendCodeWidget extends StatelessWidget {
  const ResendCodeWidget({
    super.key,
    required this.email,
  });

  final String email;
  @override
  Widget build(BuildContext context) {
    final double width = context.width;
    return BlocBuilder<TimerCubit, TimerState>(
      builder: (context, timerState) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              text: context.appLocalization.didntReceiveCode,
              size: width * 0.03,
              color: timerState is TimerInProgress ? Colors.grey : Colors.black,
            ),
            BlocConsumer<VerificationCodeCubit, VerificationCodeState>(
              listener: (context, state) {
                if (state is ResendVerificationCodeSuccess) {
                  ToastMessageService.showSuccessMessage(state.successMsg);
                }
                if (state is ResendVerificationCodeFailure) {
                  ToastMessageService.showErrorMessage(state.errMessage);
                }
              },
              builder: (context, state) {
                if (state is ResendVerificationCodeLoading) {
                  return const LoadingWidget();
                }
                return TextButton(
                  onPressed: () {
                    if (timerState is! TimerInProgress) {
                      context.read<TimerCubit>().start();
                      context
                          .read<VerificationCodeCubit>()
                          .resendVerificationCode(email);
                    }
                  },
                  child: TextWidget(
                    text: context.appLocalization.resendCode,
                    size: width * 0.03,
                    color: AppColors.primary,
                    fontWeight: timerState is TimerInProgress
                        ? FontWeight.w100
                        : FontWeight.bold,
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
