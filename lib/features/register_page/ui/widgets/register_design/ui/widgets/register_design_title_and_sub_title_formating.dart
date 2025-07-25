import 'package:flutter/material.dart';
import 'package:osmer/core/theming/main_text_styles.dart';

class RegisterDesignTitleAndSubTitleFormating extends StatelessWidget {
  final String title;
  final String subTitle;
  const RegisterDesignTitleAndSubTitleFormating({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: MainTextStyles.font20black500weight),
        Text(subTitle,style: MainTextStyles.font16grey300weight),
      ],
    );
  }
}
