import 'package:flutter/material.dart';
import 'package:osmer/core/constant/main_constant.dart';
import 'package:osmer/core/widgets/main_text_form_field_formating.dart';

class RegisterPasswordTextFieldFormating extends StatelessWidget {
  const RegisterPasswordTextFieldFormating({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: MainConstant.passwordFormKey,
      child: MainTextFormField(
        controller: MainConstant.passwordController,
        keyboardType: TextInputType.visiblePassword,
        maxLines: 1,
        obscureText: true,
        labelText: 'Password',
        prefixIcon: const Icon(Icons.lock_outline),
        suffixIcon: const Icon(Icons.visibility_off_outlined),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Password cannot be empty';
          }
          if (value.length < 6) {
            return 'Password must be at least 6 letters or numbers';
          }
          return null;
        },
      )
    );
  }
}
