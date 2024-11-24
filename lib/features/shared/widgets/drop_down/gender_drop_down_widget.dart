import 'package:bloc_architecture/core/validations/general_validation.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/providers/drop_down_provider.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_colors_constants.dart';
import '../../enums/gender_enum.dart';
import '../general/text_widget.dart';

class GenderDropDownWidget extends StatelessWidget {
  const GenderDropDownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final double width = context.width;
    return Consumer<DropDownProvider<Gender>>(
      builder: (context, provider, child) => DropdownButtonFormField<Gender>(
        value: provider.selectedValue,
        menuMaxHeight: height * 0.3,
        style: TextStyle(
          fontSize: width * 0.035,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
        borderRadius: BorderRadius.circular(height * 0.01),
        validator: (value) => GeneralValidation.isRequired(context, value),
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.grey,
          contentPadding: EdgeInsets.symmetric(horizontal: width * 0.02),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(height * 0.01),
            borderSide: BorderSide.none,
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1,
            ),
          ),
        ),
        hint: TextWidget(
          text: context.appLocalization.gender,
          size: width * 0.03,
          color: Colors.grey,
        ),
        isExpanded: true,
        icon: const Icon(
          Icons.keyboard_arrow_down_outlined,
          color: Colors.black45,
        ),
        onChanged: (gender) {
          provider.onChanged(gender!);
        },
        items: [
          DropdownMenuItem<Gender>(
            value: Gender.male,
            child: TextWidget(
              text: Gender.type(context, Gender.male),
              size: width * 0.03,
            ),
          ),
          DropdownMenuItem<Gender>(
            value: Gender.female,
            child: TextWidget(
              text: Gender.type(context, Gender.female),
              size: width * 0.03,
            ),
          ),
        ],
      ),
    );
  }
}
