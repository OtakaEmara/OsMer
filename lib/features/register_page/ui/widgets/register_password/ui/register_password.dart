import 'package:flutter/material.dart';
import 'package:osmer/core/constant/main_constant.dart';
import 'package:osmer/features/register_page/ui/widgets/register_design/ui/register_design.dart';
import 'package:osmer/features/register_page/ui/widgets/register_password/ui/widgets/register_password_text_field_formating.dart';

class RegisterPassword extends StatelessWidget {
  const RegisterPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return RegisterDesign(
      title: 'Create a password',
      subTitle: 'Create a password with at least 6 letters or numbers.',
      buttonText: 'Next',
      registerCardBody: RegisterPasswordTextFieldFormating(),
      onTap: () {
        if (MainConstant.passwordFormKey.currentState!.validate()) {

        }
      }
    );
  }
}
