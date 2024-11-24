import 'package:bloc_architecture/core/services/toast_message_service.dart';
import 'package:bloc_architecture/features/auth/controllers/cubits/verification_code/verification_code_cubit.dart';
import 'package:bloc_architecture/features/auth/views/verification_code/widgets/pin_code_text_field_widget.dart';
import 'package:bloc_architecture/features/auth/views/verification_code/widgets/resend_code_widget.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/widgets/app_bars/shared_app_bar_with_back_button_widget.dart';
import 'package:bloc_architecture/features/shared/widgets/general/text_widget.dart';
import 'package:bloc_architecture/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors_constants.dart';
import '../../../shared/cubits/timer/timer_cubit.dart';

class VerificationCodePage extends StatefulWidget {
  const VerificationCodePage({
    super.key,
    required this.email,
  });

  final String email;

  @override
  State<VerificationCodePage> createState() => _VerificationCodePageState();
}

class _VerificationCodePageState extends State<VerificationCodePage> {
  late final VerificationCodeCubit _verificationCodeCubit;
  late final TimerCubit _timerCubit;
  @override
  void initState() {
    super.initState();
    _verificationCodeCubit = sl.get<VerificationCodeCubit>();
    _timerCubit = TimerCubit(60)..start();
  }

  @override
  void dispose() {
    _verificationCodeCubit.close();
    _timerCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final double width = context.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: _verificationCodeCubit,
        ),
        BlocProvider<TimerCubit>.value(
          value: _timerCubit,
        ),
      ],
      child: Scaffold(
        appBar: const SharedAppBarWithBackButtonWidget(),
        body: ListView(
          padding: EdgeInsets.all(height * 0.04),
          children: [
            SizedBox(height: height * 0.1),
            TextWidget(
              text: context.appLocalization.verification,
              size: width * 0.045,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(height * 0.02),
              child: TextWidget(
                text: context.appLocalization.enterVerificationCodeSent,
                size: width * 0.035,
                color: Colors.grey,
                textAlign: TextAlign.center,
              ),
            ),
            const PinCodeTextFieldWidget(),
            ResendCodeWidget(email: widget.email),
            BlocConsumer<TimerCubit, TimerState>(
              listener: (context, state) {
                if (state is TimerFailure) {
                  ToastMessageService.showErrorMessage(state.errMessage);
                }
              },
              builder: (context, state) {
                if (state is TimerInProgress) {
                  return TextWidget(
                    text: _getTimerText(state.timeRemaining),
                    size: context.width * 0.035,
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }

  String _getTimerText(int timeRemaining) {
    final String minutes = (timeRemaining ~/ 60).toString().padLeft(2, '0');
    final String seconds = (timeRemaining % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }
}
