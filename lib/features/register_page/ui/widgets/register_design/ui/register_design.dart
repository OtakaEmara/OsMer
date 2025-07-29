import 'package:flutter/material.dart';
import 'package:osmer/core/extension/navigation_extension.dart';
import 'package:osmer/features/register_page/ui/widgets/register_design/ui/widgets/register_design_formating.dart';

class RegisterDesign extends StatelessWidget {
  final String title;
  final String subTitle;
  final String buttonText;
  final Widget registerCardBody;
  final Function()? onTap;
  const RegisterDesign({
    super.key,
    required this.title, required this.subTitle, required this.buttonText,
    required this.registerCardBody, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: RegisterDesignFormating(
        title: title,
        subTitle: subTitle,
        buttonText: buttonText,
        registerCardBody: registerCardBody,
        onTap: onTap,
      ),
    );
  }
}