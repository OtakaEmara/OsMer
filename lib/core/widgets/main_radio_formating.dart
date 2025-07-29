import 'package:flutter/material.dart';
import 'package:osmer/core/theming/main_colors.dart';
import 'package:osmer/core/theming/main_text_styles.dart';

class MainRadioFormating extends StatelessWidget {
  final String genderTextType;
  final String genderValueType;
  final String selectedGender;
  final Function()? onTap;
  final Function(String?)? onChanged;

  const MainRadioFormating({super.key,
    required this.genderTextType, required this.genderValueType,
    required this.selectedGender, this.onTap, this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Row(
        children: [
          Text(
            genderTextType,
            style: MainTextStyles.font18black300weight,
          ),
          const Spacer(),
          Radio<String>(
            value: genderValueType,
            groupValue: selectedGender,
            fillColor: selectedGender == genderValueType ? WidgetStateProperty.all(MainColors.mainCyan)
                : WidgetStateProperty.all(MainColors.blueGrey),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
            onChanged: onChanged
          ),
        ],
      ),
    );
  }
}
