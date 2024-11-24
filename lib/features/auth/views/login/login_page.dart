import 'package:bloc_architecture/core/validations/general_validation.dart';
import 'package:bloc_architecture/features/auth/controllers/cubits/login/login_cubit.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/providers/password_visibility_provider.dart';
import 'package:bloc_architecture/features/auth/views/login/widgets/forget_password_widget.dart';
import 'package:bloc_architecture/features/auth/views/login/widgets/login_button_widget.dart';
import 'package:bloc_architecture/features/auth/views/login/widgets/no_account_widget.dart';
import 'package:bloc_architecture/features/auth/views/login/widgets/password_text_field_widget.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/widgets/general/text_widget.dart';
import 'package:bloc_architecture/features/shared/widgets/images/svg_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/app_colors_constants.dart';
import '../../../../injection_container.dart';
import '../../../shared/widgets/text_fields/text_form_field_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final LoginCubit _loginCubit;
  late final PasswordVisibilityProvider _passwordVisibilityProvider;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController _credentialsController;
  late final TextEditingController _passwordController;
  @override
  void initState() {
    _loginCubit = sl.get<LoginCubit>();
    _passwordVisibilityProvider = PasswordVisibilityProvider();
    _credentialsController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _loginCubit.close();
    _passwordVisibilityProvider.dispose();
    _credentialsController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final double width = context.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>.value(
          value: _loginCubit,
        ),
        ChangeNotifierProvider<PasswordVisibilityProvider>.value(
          value: _passwordVisibilityProvider,
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: SvgImageWidget(
                imagePath: 'app_logo.svg',
                height: height * 0.045,
              ),
            ),
          ],
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(height * 0.02),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.03),
                child: TextWidget(
                  text: context.appLocalization.signIn,
                  size: width * 0.045,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.start,
                ),
              ),
              TextWidget(
                text: context.appLocalization.email,
                size: width * 0.035,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.start,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.01,
                  bottom: height * 0.02,
                ),
                child: TextFormFieldWidget(
                  controller: _credentialsController,
                  keyboardType: TextInputType.text,
                  labelText: 'You@site.com',
                  fillColor: AppColors.grey,
                  validator: (value) =>
                      GeneralValidation.isRequired(context, value!),
                ),
              ),
              TextWidget(
                text: context.appLocalization.password,
                size: width * 0.035,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.start,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.01,
                  bottom: height * 0.02,
                ),
                child: PasswordTextFieldWidget(
                  passwordController: _passwordController,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.02,
                  bottom: height * 0.03,
                ),
                child: const ForgetPasswordWidget(),
              ),
              LoginButtonWidget(
                formKey: _formKey,
                emailController: _credentialsController,
                passwordController: _passwordController,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.01),
                child: const NoAccountWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
