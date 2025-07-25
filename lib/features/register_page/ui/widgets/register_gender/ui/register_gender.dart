import 'package:flutter/material.dart';
import 'package:osmer/core/extension/navigation_extension.dart';
import 'package:osmer/core/routing/routing_constant.dart';
import 'package:osmer/features/register_page/ui/widgets/register_design/ui/register_design.dart';
import 'package:osmer/features/register_page/ui/widgets/register_gender/ui/widgets/register_gender_radio_formating.dart';

class RegisterGender extends StatelessWidget {
  const RegisterGender({super.key});

  @override
  Widget build(BuildContext context) {
    return RegisterDesign(
      title: 'What is your gender?',
      subTitle: 'Choose your gender.',
      buttonText: 'Next',
      registerCardBody: RegisterGenderRadioFormating(),
      onTap: () {
        context.pushNamed(RoutingConstant.registerEmailOrMobile);
      },
    );
  }
}
