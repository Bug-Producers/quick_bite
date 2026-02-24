import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            width: double.infinity.w,
            height: double.infinity.h,
            decoration: BoxDecoration(
              gradient:  LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors : [
                  Color(0xFFF27F0D),
                 // Color(0xFFee6f08),
                 // Color(0xFFea6004),
                  Color(0XFFE65100),
                ],
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 300.h),
                SvgPicture.asset(
                    "assets/Central Branding Content (1).svg",
                 width: 220.91.w,
                  height: 224.h,
                ),
                SizedBox(height: 230.h),
                Padding(
                  padding:  EdgeInsetsGeometry.fromLTRB(0, 0, 45.w, 0),
                  child: Text(
                      "Initializing kitchen...",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 14.sp,
                    ),
                  
                  ),
                ),
                SizedBox(height: 10.h),
                LinearPercentIndicator(
                  alignment: MainAxisAlignment.center,
                  width: 192.0.w,
                  lineHeight: 6.0.h,
                  percent: 0.5,
                  backgroundColor: Colors.white.withOpacity(0.2),
                  progressColor: Colors.white,
                  barRadius: Radius.circular(5.r),
                ),
              ],

            ),
          ),
    );
  }
}
