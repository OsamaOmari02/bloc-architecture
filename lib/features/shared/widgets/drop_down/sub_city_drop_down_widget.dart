import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/providers/drop_down_provider.dart';
import 'package:bloc_architecture/features/shared/providers/localization_provider.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/models/sub_city_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_colors_constants.dart';
import '../../../../core/validations/general_validation.dart';
import '../../cubits/cities/cities_cubit.dart';
import '../general/text_widget.dart';

class SubCityDropDownWidget extends StatelessWidget {
  const SubCityDropDownWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final double width = context.width;
    final bool isEnglish = context.read<LocalizationProvider>().isEnglish;
    final CitiesCubit citiesCubit = context.read<CitiesCubit>();
    return BlocConsumer<CitiesCubit, CitiesState>(
      buildWhen: (previous, current) => current is CityChange,
      listener: (context, state) {
        if (state is CityChange) {
          context.read<DropDownProvider<SubCity>>().reset();
        }
      },
      builder: (context, state) {
        return Consumer<DropDownProvider<SubCity>>(
          builder: (context, dropDownProvider, child) =>
              DropdownButtonFormField<SubCity>(
            value: dropDownProvider.selectedValue,
            menuMaxHeight: height * 0.3,
            borderRadius: BorderRadius.circular(height * 0.01),
            style: TextStyle(
              fontSize: width * 0.035,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.grey,
              contentPadding: EdgeInsets.symmetric(horizontal: width * 0.02),
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              enabledBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none),
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
            validator: (value) => GeneralValidation.isRequired(context, value),
            hint: TextWidget(
              text: context.appLocalization.subCity,
              size: width * 0.03,
            ),
            isExpanded: true,
            icon: const Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.black45,
            ),
            onChanged: (subCity) => dropDownProvider.onChanged(subCity!),
            items: citiesCubit.selectedCity != null
                ? []
                    .map<DropdownMenuItem<SubCity>>(
                      (subCity) => DropdownMenuItem<SubCity>(
                        value: subCity,
                        child: TextWidget(
                          text: isEnglish ? subCity.nameEn : subCity.nameAr,
                          size: width * 0.03,
                        ),
                      ),
                    )
                    .toList()
                : [],
          ),
        );
      },
    );
  }
}
