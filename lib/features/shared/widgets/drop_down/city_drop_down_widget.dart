import 'package:bloc_architecture/features/shared/cubits/cities/cities_cubit.dart';
import 'package:bloc_architecture/features/shared/extensions/localization_extension.dart';
import 'package:bloc_architecture/features/shared/providers/drop_down_provider.dart';
import 'package:bloc_architecture/features/shared/providers/localization_provider.dart';
import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_colors_constants.dart';
import '../../../../core/validations/general_validation.dart';
import '../../models/city_model.dart';
import '../general/text_widget.dart';

class CityDropDownWidget extends StatelessWidget {
  const CityDropDownWidget({
    super.key,
    required this.cities,
  });

  final List<City> cities;
  @override
  Widget build(BuildContext context) {
    final double height = context.height;
    final double width = context.width;
    final bool isEnglish = context.read<LocalizationProvider>().isEnglish;
    return Consumer<DropDownProvider<City>>(
      builder: (context, provider, child) => DropdownButtonFormField<City>(
        value: provider.selectedValue,
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
        validator: (value) => GeneralValidation.isRequired(context, value),
        hint: TextWidget(
          text: context.appLocalization.city,
          size: width * 0.03,
        ),
        isExpanded: true,
        icon: const Icon(
          Icons.keyboard_arrow_down_outlined,
          color: Colors.black45,
        ),
        onChanged: (city) {
          provider.onChanged(city!);
          context.read<CitiesCubit>().changeCity(city);
        },
        items: cities
            .map<DropdownMenuItem<City>>(
              (city) => DropdownMenuItem<City>(
                value: city,
                child: TextWidget(
                  text: isEnglish ? city.nameEn : city.nameAr,
                  size: width * 0.03,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
