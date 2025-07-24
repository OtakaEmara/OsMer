import 'package:flutter/material.dart';
import 'package:osmer/core/constant/main_constant.dart';
import 'package:osmer/core/spacing/spacing.dart';
import 'package:osmer/core/widgets/main_text_form_field_formating.dart';

class RegisterFullNameTextFieldFormating extends StatelessWidget {
  const RegisterFullNameTextFieldFormating({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: MainConstant.fullNameFormKey,
      child: Column(
        children: [
          MainTextFormField(
            controller: MainConstant.firstNameController,
            labelText: 'First name',
            maxLines: 1,
            validator: (p0) {
              if (p0!.isEmpty) {
                return 'Please enter your first name';
              }
              return null;
            },
            onChanged: (p0) {
              MainConstant.firstNameController.text = p0;
            },
          ),
          Spacing.verticalSpace(20),
          MainTextFormField(
            controller: MainConstant.lastNameController,
            labelText: 'Last name',
            maxLines: 1,
            validator: (p0) {
              if (p0!.isEmpty) {
                return 'Please enter your last name';
              }
              return null;
            },
            onChanged: (p0) {
              MainConstant.lastNameController.text = p0;
            },
          ),
        ],
      ),
    );
  }
}
