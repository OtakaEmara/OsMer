import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:osmer/core/theming/main_colors.dart';
import 'package:osmer/core/theming/main_text_styles.dart';

class MainTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final int? minLines;
  final int? maxLines;
  final bool? expands;
  final InputDecoration? decoration;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final String? labelText;
  final String? hintText;
  final String? Function(String?)? validator;
  final Function()? onTap;
  final Function(String)? onChanged;

  const MainTextFormField({super.key,
    required this.controller, this.keyboardType,this.labelText, this.minLines,
    this.maxLines,this.expands,this.decoration, this.validator, this.onTap,
    this.onChanged, this.prefixIcon, this.suffixIcon, this.hintText, this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTap: onTap,
      onChanged: onChanged,
      keyboardType: keyboardType ?? TextInputType.text,
      style: MainTextStyles.font17black300weight,
      cursorColor: MainColors.mainCyan,
      decoration: decoration ?? InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.w),
            borderSide: BorderSide(
                color: MainColors.lighterShadeGrey,
                width: 1
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.w),
            borderSide: const BorderSide(
                color: MainColors.mainCyan,
                width: 1.5
            )
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.w),
            borderSide: const BorderSide(
                color: MainColors.red,
                width: 1.5
            )
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.w),
            borderSide: const BorderSide(
                color: MainColors.red,
                width: 1.5
            )
        ),
        label: Text(labelText??'',style: MainTextStyles.font17blueGrey300weight),
        contentPadding: EdgeInsets.symmetric(horizontal: 13.0.w, vertical: 13.0.h),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText??'',
        hintStyle: MainTextStyles.font16lighterShadeGrey400weight,
      ),
      validator: validator,
      obscureText: obscureText ?? false,
      minLines: minLines,
      maxLines: maxLines,
      expands: expands?? false,
      textAlignVertical: TextAlignVertical.top,
    );
  }
}