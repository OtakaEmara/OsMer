import 'package:flutter/material.dart';
import 'package:osmer/core/routing/routing_constant.dart';
import 'package:osmer/features/home_page/ui/home_page.dart';

class RoutingGenerator{

  static Route<dynamic>? onGenerateRoute(routeSettings) {
    switch (routeSettings.name) {
      case RoutingConstant.homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        return null;
    }
  }

}