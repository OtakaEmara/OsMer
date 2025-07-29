import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:osmer/core/extension/navigation_extension.dart';
import 'package:osmer/core/spacing/spacing.dart';
import 'package:osmer/core/theming/main_colors.dart';
import 'package:osmer/core/theming/main_text_styles.dart';
import 'package:osmer/features/register_page/ui/widgets/register_card/ui/register_card.dart';
import 'package:osmer/features/register_page/ui/widgets/register_design/ui/widgets/register_design_button_formating.dart';
import 'package:osmer/features/register_page/ui/widgets/register_design/ui/widgets/register_design_title_and_sub_title_formating.dart';

class RegisterConfirmationCodeDesign extends StatelessWidget {
  final String title;
  final String subTitle;
  final String buttonNextText;
  final String buttonResendCodeText;
  final Widget registerCardBody;
  final Function()? onTapNext;
  final Function()? onTapResendCode;
  const RegisterConfirmationCodeDesign({super.key,
    required this.title, required this.subTitle, required this.buttonNextText,required this.buttonResendCodeText,
    required this.registerCardBody, required this.onTapNext, required this.onTapResendCode
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
        body: RegisterCard(
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
                      text: buttonNextText,
                      onTap: onTapNext
                  ),
                  Spacing.verticalSpace(15),
                  RegisterDesignButton(
                      text: buttonResendCodeText,
                      decorationColor: MainColors.white,
                      borderColor: MainColors.blueGrey,
                      textStyle: MainTextStyles.font16black300weight,
                      onTap: onTapResendCode
                  )
                ]
            ),
          ),
        )
    );
  }
}
