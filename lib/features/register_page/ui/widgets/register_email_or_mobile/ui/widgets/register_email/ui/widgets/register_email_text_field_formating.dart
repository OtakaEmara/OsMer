import 'package:flutter/material.dart';
import 'package:osmer/core/constant/main_constant.dart';
import 'package:osmer/core/widgets/main_text_form_field_formating.dart';

class RegisterEmailTextFieldFormating extends StatelessWidget {
  const RegisterEmailTextFieldFormating({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: MainConstant.emailFormKey,
      child: MainTextFormField(
        controller: MainConstant.emailController,
        keyboardType: TextInputType.emailAddress,
        prefixIcon: const Icon(Icons.email),
        labelText: 'Email address',
        maxLines: 1,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email address';
          }
          final emailRegex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
          if(!emailRegex.hasMatch(value)){
            return 'Please enter a valid email address';
          }
          return null;
        },
      ),
    );
  }
}
