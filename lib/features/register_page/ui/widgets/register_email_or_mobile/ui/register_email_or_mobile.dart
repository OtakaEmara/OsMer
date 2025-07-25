import 'package:flutter/material.dart';
import 'package:osmer/core/constant/main_constant.dart';
import 'package:osmer/features/register_page/ui/widgets/register_email_or_mobile/ui/widgets/register_email/ui/register_email.dart';
import 'package:osmer/features/register_page/ui/widgets/register_email_or_mobile/ui/widgets/register_mobile/ui/register_mobile.dart';

class RegisterEmailOrMobile extends StatefulWidget {
  const RegisterEmailOrMobile({super.key});

  @override
  State<RegisterEmailOrMobile> createState() => _RegisterEmailOrMobileState();
}

class _RegisterEmailOrMobileState extends State<RegisterEmailOrMobile> {
  @override
  Widget build(BuildContext context) {
    if (MainConstant.isEmailPage) {
      return const RegisterEmail();
    } else {
      return const RegisterMobile();
    }
  }
}