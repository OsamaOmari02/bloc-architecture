import 'package:bloc_architecture/features/shared/extensions/media_query_extension.dart';
import 'package:bloc_architecture/features/shared/widgets/general/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../core/constants/app_colors_constants.dart';
import '../../../../core/l10n/generated/l10n.dart';
import '../text_fields/text_form_field_widget.dart';

class BirthdayPickerWidget extends FormField<String> {
  BirthdayPickerWidget({
    super.key,
    required TextEditingController birthdayController,
    super.validator,
  }) : super(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          builder: (FormFieldState<String> state) {
            return InkWell(
              onTap: () => showModalBottomSheet(
                context: state.context,
                builder: (BuildContext context) => CupertinoDatePicker(
                  onDateTimeChanged: (date) {
                    final formattedDate = DateFormat('yyyy-MM-dd').format(date);
                    birthdayController.text = formattedDate;
                    state.didChange(formattedDate);
                  },
                  mode: CupertinoDatePickerMode.date,
                  maximumYear: DateTime.now().year - 13,
                  minimumYear: 1960,
                  initialDateTime: DateTime(2000),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormFieldWidget(
                    keyboardType: TextInputType.datetime,
                    controller: birthdayController,
                    suffixWidget: Icon(
                      Icons.calendar_month_outlined,
                      size: state.context.height * 0.025,
                    ),
                    labelText:
                        AppLocalization.of(state.context).enterDateOfBirth,
                    fillColor: AppColors.grey,
                    enabled: false,
                  ),
                  if (state.hasError)
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: TextWidget(
                        text: state.errorText ?? '',
                        color: Colors.red,
                        size: state.context.width * 0.025,
                      ),
                    ),
                ],
              ),
            );
          },
        );
}
