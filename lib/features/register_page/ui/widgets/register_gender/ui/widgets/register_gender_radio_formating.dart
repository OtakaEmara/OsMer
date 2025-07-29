import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:osmer/core/spacing/spacing.dart';
import 'package:osmer/core/widgets/main_radio_formating.dart';

class RegisterGenderRadioFormating extends StatefulWidget {
  const RegisterGenderRadioFormating({super.key});

  @override
  State<RegisterGenderRadioFormating> createState() => _RegisterGenderRadioFormatingState();
}

class _RegisterGenderRadioFormatingState extends State<RegisterGenderRadioFormating> {

  String selectedGender = 'male';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0.w),
      child: Column(
        children: [
          MainRadioFormating(
            genderTextType: 'Male',
            genderValueType: 'male',
            selectedGender: selectedGender,
            onTap: () {
              setState(() {
                selectedGender = 'male';
              });
            },
          ),
          Spacing.verticalSpace(20),
          MainRadioFormating(
            genderTextType: 'Female',
            genderValueType: 'female',
            selectedGender: selectedGender,
            onTap: () {
              setState(() {
                selectedGender = 'female';
              });
            },
          ),
        ],
      ),
    );
  }
}