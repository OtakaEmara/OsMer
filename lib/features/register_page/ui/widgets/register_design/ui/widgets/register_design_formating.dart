import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:osmer/core/spacing/spacing.dart';
import 'package:osmer/features/register_page/ui/widgets/register_card/ui/register_card.dart';
import 'package:osmer/features/register_page/ui/widgets/register_design/ui/widgets/register_design_button_formating.dart';
import 'package:osmer/features/register_page/ui/widgets/register_design/ui/widgets/register_design_title_and_sub_title_formating.dart';

class RegisterDesignFormating extends StatelessWidget {
  final String title;
  final String subTitle;
  final String buttonText;
  final Widget registerCardBody;
  final Function()? onTap;

  const RegisterDesignFormating({
    super.key,
    required this.title, required this.subTitle, required this.buttonText,
    required this.registerCardBody, required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return RegisterCard(
      child: Padding(
        padding: EdgeInsets.all(20.0.w),
        child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RegisterDesignTitleAndSubTitleFormating(
                      title: title,
                      subTitle: subTitle,
                    ),
                    Spacing.verticalSpace(30),
                    registerCardBody,
                  ],
                ),
              ),
              RegisterDesignButton(
                  text: buttonText,
                  onTap: onTap
              )
            ]
        ),
      ),
    );
  }
}
