import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:osmer/my_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const MyApp());
  });
}