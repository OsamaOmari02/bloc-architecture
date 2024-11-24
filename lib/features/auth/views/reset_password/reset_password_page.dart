import 'package:bloc_architecture/features/auth/controllers/cubits/reset_password/reset_password_cubit.dart';
import 'package:bloc_architecture/features/auth/views/reset_password/widgets/reset_password_button_widget.dart';
import 'package:bloc_architecture/features/auth/views/widgets/passwords_text_fields_widget.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/widgets/app_bars/shared_app_bar_with_back_button_and_app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/routing_constants.dart';
import '../../../../injection_container.dart';
import '../../../shared/providers/password_visibility_provider.dart';
import '../../../shared/widgets/general/text_widget.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({
    super.key,
    required this.otpToken,
  });

  final String otpToken;
  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  late final ResetPasswordCubit _resetPasswordCubit;
  late final PasswordVisibilityProvider _passwordVisibilityProvider;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmPasswordController;

  @override
  void initState() {
    _resetPasswordCubit = sl.get<ResetPasswordCubit>();
    _passwordVisibilityProvider = PasswordVisibilityProvider();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _resetPasswordCubit.close();
    _passwordVisibilityProvider.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final double width = context.width;
    return MultiProvider(
      providers: [
        BlocProvider<ResetPasswordCubit>.value(
          value: _resetPasswordCubit,
        ),
        ChangeNotifierProvider<PasswordVisibilityProvider>.value(
          value: _passwordVisibilityProvider,
        ),
      ],
      child: Scaffold(
        appBar: SharedAppBarWithBackButtonAndAppLogoWidget(
          onTap: () => context.goNamed(RoutingConstants.loginPage),
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(height * 0.02),
            children: [
              TextWidget(
                text: context.appLocalization.resetPassword,
                size: width * 0.045,
                textAlign: TextAlign.start,
                fontWeight: FontWeight.bold,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.04),
                child: PasswordsTextFieldsWidget(
                  passwordController: _passwordController,
                  confirmPasswordController: _confirmPasswordController,
                ),
              ),
              ResetPasswordButtonWidget(
                formKey: _formKey,
                passwordController: _passwordController,
                confirmPasswordController: _confirmPasswordController,
                otpToken: widget.otpToken,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
