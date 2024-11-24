import 'package:bloc_architecture/features/auth/views/forget_password/widgets/confirm_forget_password_button_widget.dart';
import 'package:bloc_architecture/features/shared/extensions/go_router_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/widgets/app_bars/shared_app_bar_with_back_button_and_app_logo_widget.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/app_colors_constants.dart';
import '../../../../core/validations/user_data_validation.dart';
import '../../../../injection_container.dart';
import '../../../shared/widgets/general/text_widget.dart';
import '../../../shared/widgets/text_fields/text_form_field_widget.dart';
import '../../controllers/cubits/forget_password/forget_password_cubit.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  late final ForgetPasswordCubit _forgetPasswordCubit;
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _emailController;

  @override
  void initState() {
    _forgetPasswordCubit = sl.get<ForgetPasswordCubit>();
    _emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _forgetPasswordCubit.close();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final double width = context.width;
    return Scaffold(
      appBar: const SharedAppBarWithBackButtonAndAppLogoWidget(),
      body: BlocProvider.value(
        value: _forgetPasswordCubit,
        child: ListView(
          padding: EdgeInsets.all(height * 0.02),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.03),
              child: TextWidget(
                text: context.appLocalization.forgetPassword,
                size: width * 0.045,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.02),
              child: TextWidget(
                text: context.appLocalization.email,
                size: width * 0.035,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.start,
              ),
            ),
            Form(
              key: _formKey,
              child: TextFormFieldWidget(
                labelText: 'you@site.com',
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                validator: (value) => UserDataValidation.email(context, value!),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.04),
              child: ConfirmForgetPasswordButtonWidget(
                formKey: _formKey,
                emailController: _emailController,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  text: context.appLocalization.signInWithPassword,
                  size: width * 0.03,
                ),
                InkWell(
                  onTap: context.safePop,
                  child: TextWidget(
                    text: '  ${context.appLocalization.signIn}',
                    size: width * 0.03,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
