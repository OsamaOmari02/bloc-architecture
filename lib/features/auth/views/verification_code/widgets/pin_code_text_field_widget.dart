import 'package:bloc_architecture/core/constants/routing_constants.dart';
import 'package:bloc_architecture/core/services/toast_message_service.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/widgets/general/loading_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../core/constants/app_colors_constants.dart';
import '../../../controllers/cubits/verification_code/verification_code_cubit.dart';

class PinCodeTextFieldWidget extends StatelessWidget {
  const PinCodeTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final double width = context.width;
    return BlocConsumer<VerificationCodeCubit, VerificationCodeState>(
      listener: (context, state) {
        if (state is CheckVerificationCodeSuccess) {
          context.pushNamed(
            RoutingConstants.resetPasswordPage,
            pathParameters: {'otpToken': state.otpToken},
          );
        } else if (state is CheckVerificationCodeFailure) {
          ToastMessageService.showErrorMessage(state.errMessage);
        }
      },
      builder: (context, state) {
        if (state is CheckVerificationCodeLoading) {
          return const LoadingWidget();
        }
        return PinCodeTextField(
          appContext: context,
          length: 6,
          enableActiveFill: true,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          animationType: AnimationType.fade,
          onCompleted: (code) =>
              context.read<VerificationCodeCubit>().checkVerificationCode(code),
          pinTheme: PinTheme(
            activeColor: AppColors.grey,
            inactiveColor: AppColors.grey,
            inactiveFillColor: AppColors.grey,
            activeFillColor: AppColors.grey,
            selectedColor: AppColors.primary,
            selectedFillColor: AppColors.grey,
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(height * 0.01),
            fieldHeight: height * 0.06,
            fieldWidth: width * 0.12,
          ),
        );
      },
    );
  }
}
