import 'package:bloc_architecture/features/change_password/controllers/cubits/change_password/change_password_cubit.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/widgets/general/circular_back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/app_colors_constants.dart';
import '../../../core/validations/user_data_validation.dart';
import '../../../injection_container.dart';
import '../../shared/providers/password_visibility_provider.dart';
import '../../shared/widgets/general/text_widget.dart';
import '../../shared/widgets/text_fields/text_form_field_widget.dart';
import 'widgets/change_password_button_widget.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  late final ChangePasswordCubit _changePasswordCubit;
  late final PasswordVisibilityProvider _passwordVisibilityProvider;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController _currentPasswordController;
  late final TextEditingController _newPasswordController;
  late final TextEditingController _confirmNewPasswordController;

  @override
  void initState() {
    _changePasswordCubit = sl.get<ChangePasswordCubit>();
    _passwordVisibilityProvider = PasswordVisibilityProvider();
    _currentPasswordController = TextEditingController();
    _newPasswordController = TextEditingController();
    _confirmNewPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _changePasswordCubit.close();
    _passwordVisibilityProvider.dispose();
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmNewPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final double width = context.width;
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChangePasswordCubit>.value(
          value: _changePasswordCubit,
        ),
        ChangeNotifierProvider<PasswordVisibilityProvider>.value(
          value: _passwordVisibilityProvider,
        ),
      ],
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(height * 0.02),
            children: [
              Row(
                children: [
                  const CircularBackButtonWidget(),
                  SizedBox(width: width * 0.04),
                  TextWidget(
                    text: context.appLocalization.changePassword,
                    size: width * 0.04,
                  ),
                ],
              ),
              SizedBox(height: height * 0.05),
              TextWidget(
                text: context.appLocalization.currentPassword,
                size: width * 0.035,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.start,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.01,
                  bottom: height * 0.02,
                ),
                child: Consumer<PasswordVisibilityProvider>(
                  builder: (context, provider, child) => TextFormFieldWidget(
                    controller: _currentPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    fillColor: AppColors.grey,
                    isHidden: provider.isPasswordHidden,
                    suffixWidget: InkWell(
                      onTap: () => provider.toggleVisibility(),
                      child: Icon(
                        provider.isPasswordHidden
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Colors.grey,
                        size: height * 0.025,
                      ),
                    ),
                    maxLength: 20,
                    validator: (value) =>
                        UserDataValidation.password(context, value!),
                  ),
                ),
              ),
              TextWidget(
                text: context.appLocalization.newPassword,
                size: width * 0.035,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.start,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.01,
                  bottom: height * 0.02,
                ),
                child: Consumer<PasswordVisibilityProvider>(
                  builder: (context, provider, child) => TextFormFieldWidget(
                    controller: _newPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    fillColor: AppColors.grey,
                    isHidden: provider.isPasswordHidden,
                    suffixWidget: InkWell(
                      onTap: () => provider.toggleVisibility(),
                      child: Icon(
                        provider.isPasswordHidden
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Colors.grey,
                        size: height * 0.025,
                      ),
                    ),
                    maxLength: 20,
                    validator: (value) =>
                        UserDataValidation.password(context, value!),
                  ),
                ),
              ),
              TextWidget(
                text: context.appLocalization.confirmPassword,
                size: width * 0.035,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.start,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.01,
                  bottom: height * 0.02,
                ),
                child: Consumer<PasswordVisibilityProvider>(
                  builder: (context, provider, child) => TextFormFieldWidget(
                    controller: _confirmNewPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    fillColor: AppColors.grey,
                    isHidden: provider.isPasswordHidden,
                    suffixWidget: InkWell(
                      onTap: () => provider.toggleVisibility(),
                      child: Icon(
                        provider.isPasswordHidden
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Colors.grey,
                        size: height * 0.025,
                      ),
                    ),
                    maxLength: 20,
                    validator: (value) =>
                        UserDataValidation.password(context, value!),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(height * 0.02),
          child: ChangePasswordButtonWidget(
            formKey: _formKey,
            currentPasswordController: _currentPasswordController,
            newPasswordController: _newPasswordController,
            confirmPasswordController: _confirmNewPasswordController,
          ),
        ),
      ),
    );
  }
}
