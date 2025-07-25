import 'package:flutter/material.dart';
import 'package:osmer/core/constant/main_constant.dart';
import 'package:osmer/features/register_page/ui/widgets/register_email_or_mobile/ui/widgets/register_email_or_mobile_design/ui/register_email_or_mobile_design.dart';
import 'package:osmer/features/register_page/ui/widgets/register_email_or_mobile/ui/widgets/register_mobile/ui/widgets/register_mobile_text_field_formating.dart';

class RegisterMobile extends StatefulWidget {
  const RegisterMobile({super.key});

  @override
  State<RegisterMobile> createState() => _RegisterMobileState();
}

class _RegisterMobileState extends State<RegisterMobile> {
  @override
  Widget build(BuildContext context) {
    return RegisterEmailOrMobileDesign(
      title: 'What is your mobile number?',
      subTitle: 'Enter your mobile number.',
      buttonNextText: 'Next',
      buttonToggleText: 'Sign up with email address',
      registerCardBody: RegisterMobileTextFieldFormating(),
      onTapNext: () {
        if (MainConstant.mobileFormKey.currentState!.validate()) {

        }
      },
      onTapToggle: () {
        setState(() {
          MainConstant.isEmailPage = true;
          MainConstant.isMobilePage = false;
        });
      },
    );
  }
}
