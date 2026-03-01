import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  String hintText;
  double? width;
  double? height;
  bool? isPassword;
  var icon;


  CustomTextField({
    super.key,
    required this.hintText,
    this.height,
    this.width,
    this.isPassword,
  this.icon
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool? hidden;

  suffix() {
    if (widget.isPassword == true) {
      if (hidden == true) {
        return IconButton(
          onPressed: () {
            setState(() {
              hidden = false;
            });
          },
          icon: Icon(Icons.visibility_off),
        );
      } else {
        return IconButton(
          onPressed: () {
            setState(() {
              hidden = true;
            });
          },
          icon: Icon(Icons.visibility),
        );
      }
    } else {
      return null;
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.isPassword == true) {
      hidden = true;
    } else {
      hidden = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: widget.width ?? 292.w,
        height: widget.height ?? 56.h,

        child: TextField(
          obscureText: hidden!,

          style: TextStyle(color: Colors.white, fontSize: 14.sp),

          decoration: InputDecoration(
            suffixIcon: suffix(),
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 12.w, right: 0),
              child: widget.icon,
            ),

            prefixIconConstraints: BoxConstraints(
              minWidth: 28.w,
              minHeight: 28.h,
            ),
            filled: true,
            fillColor: Color(0xFF2C1E10),
            hintText: widget.hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                color: Color(0xFF533110),
                width: 5.w,
              ),
            ),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Color(0xFFDE8742), width: 1.5.w),
            ),
          ),
        ),

    );
  }
}
