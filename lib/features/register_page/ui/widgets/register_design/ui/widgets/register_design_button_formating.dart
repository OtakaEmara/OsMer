import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:osmer/core/theming/main_colors.dart';
import 'package:osmer/core/theming/main_text_styles.dart';

class RegisterDesignButton extends StatefulWidget {
  final String text;
  final Function()? onTap;
  final Color? decorationColor;
  final Color? borderColor;
  final TextStyle? textStyle;

  const RegisterDesignButton({
    super.key,
    required this.text, required this.onTap,
    this.decorationColor, this.borderColor, this.textStyle,
  });

  @override
  State<RegisterDesignButton> createState() => _RegisterDesignButtonState();
}

class _RegisterDesignButtonState extends State<RegisterDesignButton> {
  double opacity = 1.0;
  double yOffset = 0.0;

  void _setPressed(bool isPressed) {
    setState(() {
      opacity = isPressed ? 0.6 : 1.0;
      yOffset = isPressed ? 2.0.h : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _setPressed(true),
      onTapUp: (_) => _setPressed(false),
      onTapCancel: () => _setPressed(false),
      onTap: widget.onTap,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 100),
        opacity: opacity,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          transform: Matrix4.translationValues(0, yOffset, 0),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 8.0.h),
            decoration: BoxDecoration(
              color: widget.decorationColor ?? MainColors.mainCyan,
              borderRadius: BorderRadius.circular(20.0.w),
              border: Border.all(
                color: widget.borderColor ?? MainColors.mainCyan,
                width: 0.5.w,
              ),
            ),
            child: Center(
              child: Text(
                widget.text,
                style: widget.textStyle ?? MainTextStyles.font20white300weight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}