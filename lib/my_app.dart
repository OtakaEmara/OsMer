import 'package:flutter/material.dart';
import 'package:osmer/core/routing/routing_constant.dart';
import 'package:osmer/core/routing/routing_generator.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutingGenerator.onGenerateRoute,
      initialRoute: RoutingConstant.homePage,
    );
  }
}