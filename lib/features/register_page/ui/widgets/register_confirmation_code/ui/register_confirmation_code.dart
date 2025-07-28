import 'package:flutter/material.dart';
import 'package:osmer/core/constant/main_constant.dart';
import 'package:osmer/features/register_page/ui/widgets/register_confirmation_code/ui/widgets/register_confirmation_code_design.dart';
import 'package:osmer/features/register_page/ui/widgets/register_confirmation_code/ui/widgets/register_confirmation_code_text_field_formating.dart';

class RegisterConfirmationCode extends StatelessWidget {
  const RegisterConfirmationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return RegisterConfirmationCodeDesign(
      title: 'Enter your confirmation code',
      subTitle: 'We have sent a confirmation code to your email address.',
      buttonNextText: 'Next',
      buttonResendCodeText: 'Resend code',
      registerCardBody: RegisterConfirmationCodeTextFieldFormating(),
      onTapNext: () {
        if (MainConstant.confirmationCodeFormKey.currentState!.validate()) {

        }
      },
      onTapResendCode: () {

      },
    );
  }
}
