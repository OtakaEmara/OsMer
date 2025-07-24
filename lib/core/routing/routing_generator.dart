import 'package:flutter/material.dart';
import 'package:osmer/core/routing/routing_constant.dart';
import 'package:osmer/features/home_page/ui/home_page.dart';
import 'package:osmer/features/register_page/ui/register_page.dart';
import 'package:osmer/features/register_page/ui/widgets/register_birthday/ui/register_birthday_formating.dart';
import 'package:osmer/features/register_page/ui/widgets/register_full_name/ui/register_full_name_formating.dart';

class RoutingGenerator{

  static Route<dynamic>? onGenerateRoute(routeSettings) {
    switch (routeSettings.name) {
      case RoutingConstant.homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case RoutingConstant.registerPage:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case RoutingConstant.registerFullNamePage:
        return MaterialPageRoute(builder: (_) => const RegisterFullNameFormating());
      case RoutingConstant.registerBirthdayPage:
        return MaterialPageRoute(builder: (_) => const RegisterBirthdayFormating());
      default:
        return null;
    }
  }

}