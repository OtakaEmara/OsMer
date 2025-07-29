import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:osmer/core/routing/routing_constant.dart';
import 'package:osmer/core/routing/routing_generator.dart';
import 'package:osmer/core/theming/main_light_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RoutingGenerator.onGenerateRoute,
        theme: lightTheme,
        initialRoute: RoutingConstant.registerPage,
      ),
    );
  }
}