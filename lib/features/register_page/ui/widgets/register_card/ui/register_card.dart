import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:osmer/core/theming/main_colors.dart';

class RegisterCard extends StatelessWidget {

  final Widget child;
  const RegisterCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: MainColors.mainCyan,
      color: MainColors.white,
      margin: EdgeInsets.all(30.0.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0.w),
        side: BorderSide(
          color: MainColors.mainCyan,
          width: 0.1.w,
        ),
      ),
      child: child
    );
  }
}
