import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Spacing{

  static SizedBox verticalSpace(double height){
    return SizedBox(height: height.h);
  }

  static SizedBox horizontalSpace(double width){
    return SizedBox(width: width.w);
  }
}