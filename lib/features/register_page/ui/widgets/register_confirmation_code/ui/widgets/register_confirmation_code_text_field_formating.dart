import 'package:flutter/material.dart';
import 'package:osmer/core/constant/main_constant.dart';
import 'package:osmer/core/widgets/main_text_form_field_formating.dart';

class RegisterConfirmationCodeTextFieldFormating extends StatelessWidget {
  const RegisterConfirmationCodeTextFieldFormating({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: MainConstant.confirmationCodeFormKey,
      child: MainTextFormField(
        controller: MainConstant.confirmationCodeController,
        keyboardType: TextInputType.number,
        maxLines: 1,
        labelText: 'Confirmation code',
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your confirmation code';
          }
          return null;
        }
      )
    );
  }
}
