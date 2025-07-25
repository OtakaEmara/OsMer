import 'package:flutter/material.dart';
import 'package:osmer/core/constant/main_constant.dart';
import 'package:osmer/features/register_page/ui/widgets/register_email_or_mobile/ui/widgets/register_email/ui/widgets/register_email_text_field_formating.dart';
import 'package:osmer/features/register_page/ui/widgets/register_email_or_mobile/ui/widgets/register_email_or_mobile_design/ui/register_email_or_mobile_design.dart';

class RegisterEmail extends StatefulWidget {
  const RegisterEmail({super.key});

  @override
  State<RegisterEmail> createState() => _RegisterEmailState();
}

class _RegisterEmailState extends State<RegisterEmail> {
  @override
  Widget build(BuildContext context) {
    return RegisterEmailOrMobileDesign(
      title: 'What is your email address?',
      subTitle: 'Enter your email address.',
      buttonNextText: 'Next',
      buttonToggleText: 'Sign up with mobile number',
      registerCardBody: RegisterEmailTextFieldFormating(),
      onTapNext: () {
        if (MainConstant.emailFormKey.currentState!.validate()) {

        }
      },
      onTapToggle: () {
        setState(() {
          MainConstant.isEmailPage = false;
          MainConstant.isMobilePage = true;
        });
      },
    );
  }
}
