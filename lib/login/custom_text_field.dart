import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  String hintText;
   CustomTextField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(

      child: SizedBox(
        width: 292.w,

        child: TextField(
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
          ),

          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFF2C1E10),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                color: Color(0xFF533110).withOpacity(0.2),
                width: 4.w,
              ),
            ),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                color: Color(0xFF6C4113),
                width: 1.5.w,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
