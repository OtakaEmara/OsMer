import 'package:flutter/material.dart';

class MainConstant{
  static var fullNameFormKey = GlobalKey<FormState>();
  static var firstNameController = TextEditingController();
  static var lastNameController = TextEditingController();
  static var birthdayFormKey = GlobalKey<FormState>();
  static var birthdayController = TextEditingController();
  static var emailFormKey = GlobalKey<FormState>();
  static var emailController = TextEditingController();
  static var mobileFormKey = GlobalKey<FormState>();
  static var mobileController = TextEditingController();
  static bool isEmailPage = true;
  static bool isMobilePage = false;
  static var passwordFormKey = GlobalKey<FormState>();
  static var passwordController = TextEditingController();
  static var confirmationCodeFormKey = GlobalKey<FormState>();
  static var confirmationCodeController = TextEditingController();

}