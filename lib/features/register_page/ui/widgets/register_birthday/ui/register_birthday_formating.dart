import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:osmer/core/constant/main_constant.dart';
import 'package:osmer/features/register_page/ui/widgets/register_birthday/ui/widgets/register_birthday_text_field_formating.dart';
import 'package:osmer/features/register_page/ui/widgets/register_design/ui/register_design.dart';

class RegisterBirthdayFormating extends StatelessWidget {
  const RegisterBirthdayFormating({super.key});

  @override
  Widget build(BuildContext context) {
    MainConstant.birthdayController.text = DateFormat.yMMMd().format(DateTime.parse('2001-10-01'));
    return RegisterDesign(
      title: 'What is your birthday?',
      subTitle: 'Enter your birthday.',
      buttonText: 'Next',
      registerCardBody: RegisterBirthdayTextFieldFormating(),
      onTap: () {
        if (MainConstant.birthdayFormKey.currentState!.validate()) {
          // context.pushNamed(RoutingConstant.registerPage);
        }
      },
    );
  }
}