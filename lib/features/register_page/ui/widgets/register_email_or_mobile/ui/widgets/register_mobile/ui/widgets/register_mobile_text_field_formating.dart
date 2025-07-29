import 'package:flutter/material.dart';
import 'package:osmer/core/constant/main_constant.dart';
import 'package:osmer/core/widgets/main_text_form_field_formating.dart';

class RegisterMobileTextFieldFormating extends StatelessWidget {
  const RegisterMobileTextFieldFormating({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: MainConstant.mobileFormKey,
      child: MainTextFormField(
        controller: MainConstant.mobileController,
        keyboardType: TextInputType.phone,
        prefixIcon: const Icon(Icons.phone_android_outlined),
        labelText: 'Mobile number',
        maxLines: 1,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your mobile number';
          }
          final mobileRegex = RegExp(r'^[0-9]{11}$');
          if(!mobileRegex.hasMatch(value)){
            return 'Please enter a valid mobile number';
          }
          return null;
        },
      )
    );
  }
}
