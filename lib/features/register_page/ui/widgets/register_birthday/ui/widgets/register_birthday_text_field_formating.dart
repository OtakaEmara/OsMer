import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:osmer/core/constant/main_constant.dart';
import 'package:osmer/core/widgets/main_text_form_field_formating.dart';

class RegisterBirthdayTextFieldFormating extends StatelessWidget {
  const RegisterBirthdayTextFieldFormating({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: MainConstant.birthdayFormKey,
      child: MainTextFormField(
        controller: MainConstant.birthdayController,
        labelText: 'Birthday (${DateTime.now().year - DateFormat.yMMMd().parse(MainConstant.birthdayController.text).year} years old)',
        maxLines: 1,
        validator: (p0) {
          if (p0!.isEmpty) {
            return 'Please enter your birthday';
          }
          return null;
        },
        onTap: () {
          showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.parse("1900-01-01"),
              lastDate: DateTime.now()
          ).then((onValue){
            if(onValue != null && context.mounted){
              MainConstant.birthdayController.text = DateFormat.yMMMd().format(DateTime.parse(onValue.toString()));
            }
          });
        },
      ),
    );
  }
}
