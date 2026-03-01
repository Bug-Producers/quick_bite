import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
   String text;
   double? fontSize;
   Color? color;
   FontWeight? fontWeight;

   CustomText({
    super.key,
    required this.text,
    this.fontSize,
    this.color,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 16.sp,
        color: color ?? Colors.white,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );

  }
}