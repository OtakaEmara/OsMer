import 'package:flutter/material.dart';
import 'package:osmer/core/constant/main_constant.dart';
import 'package:osmer/core/extension/navigation_extension.dart';
import 'package:osmer/core/routing/routing_constant.dart';
import 'package:osmer/features/register_page/ui/widgets/register_design/ui/register_design.dart';
import 'package:osmer/features/register_page/ui/widgets/register_full_name/ui/widgets/register_full_name_text_field_formating.dart';

class RegisterFullName extends StatelessWidget {
  const RegisterFullName({super.key});

  @override
  Widget build(BuildContext context) {
    return RegisterDesign(
      title: 'What is your name?',
      subTitle: 'Enter your full name.',
      buttonText: 'Next',
      registerCardBody: RegisterFullNameTextFieldFormating(),
      onTap: () {
        if (MainConstant.fullNameFormKey.currentState!.validate()) {
          context.pushNamed(RoutingConstant.registerBirthday);
        }
      },
    );
  }
}
