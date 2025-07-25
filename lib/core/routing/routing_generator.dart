import 'package:flutter/material.dart';
import 'package:osmer/core/routing/routing_constant.dart';
import 'package:osmer/features/home_page/ui/home_page.dart';
import 'package:osmer/features/register_page/ui/register_page.dart';
import 'package:osmer/features/register_page/ui/widgets/register_birthday/ui/register_birthday.dart';
import 'package:osmer/features/register_page/ui/widgets/register_email_or_mobile/ui/register_email_or_mobile.dart';
import 'package:osmer/features/register_page/ui/widgets/register_email_or_mobile/ui/widgets/register_email/ui/register_email.dart';
import 'package:osmer/features/register_page/ui/widgets/register_email_or_mobile/ui/widgets/register_mobile/ui/register_mobile.dart';
import 'package:osmer/features/register_page/ui/widgets/register_gender/ui/register_gender.dart';

class RoutingGenerator{

  static Route<dynamic>? onGenerateRoute(routeSettings) {

    switch (routeSettings.name) {

      case RoutingConstant.homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());

      case RoutingConstant.registerPage:
        return MaterialPageRoute(builder: (_) => const RegisterPage());

      case RoutingConstant.registerBirthday:
        return MaterialPageRoute(builder: (_) => const RegisterBirthday());

      case RoutingConstant.registerGender:
        return MaterialPageRoute(builder: (_) => const RegisterGender());

      case RoutingConstant.registerEmailOrMobile:
        return MaterialPageRoute(builder: (_) => const RegisterEmailOrMobile());

      case RoutingConstant.registerEmail:
        return MaterialPageRoute(builder: (_) => const RegisterEmail());

      case RoutingConstant.registerMobile:
        return MaterialPageRoute(builder: (_) => const RegisterMobile());

      default:
        return null;
    }
  }
}