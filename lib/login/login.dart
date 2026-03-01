import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_text_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF221910),
      body: SafeArea(
        child: Center(
          child: Container(
            height: 840.h,
            width: 340.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: const Color(0xFF37240f).withOpacity(0.1),
                width: 4.w,
              ),
            ),
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  Center(
                    child: Text(
                      "QuickBite",
                      style: TextStyle(
                        color: const Color(0xFFF27F0D),
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Image.asset(
                    'assets/Delicious warm plated meal.png',
                    height: 155.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 30.h),
                  Padding(
                    padding: EdgeInsetsGeometry.fromLTRB(6.w, 0, 0, 0),
                    child: Text(
                      "Welcome Back",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 13.h),
                  Padding(
                    padding: EdgeInsetsGeometry.fromLTRB(4.w, 0, 0, 0),
                    child: Text(
                      'Login to continue your food journey with QuickBite',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xFF94A3B8),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsetsGeometry.fromLTRB(3.w, 0, 0, 0),
                    child: Text(
                      'Email Address',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color:  Color(0xFFCBD5E1),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                   CustomTextField(hintText: "name@example.com"),
                  SizedBox(height: 15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsGeometry.fromLTRB(3.w, 0, 0, 0),
                        child: Text(
                          "Password",
                          style: TextStyle(
                            color: const Color(0xFFCBD5E1),
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: const Color(0xFFF27F0D),
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                   CustomTextField(hintText: "Enter Your Password",isPassword: true,),
                  SizedBox(height: 36.h),
                  Center(
                    child: SizedBox(
                      width: 292.w,
                      height: 56.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF27F0D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 6.w),
                            Text(
                              "➔",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 28.h),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Color(0XFF37240f),
                          thickness: 1,
                          endIndent: 10,
                        ),
                      ),
                      Text(
                        "OR CONTINUE WITH",
                        style: TextStyle(
                          color: Color(0XFF64748b),
                          letterSpacing: 2,
                          fontSize: 14,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Color(0XFF37240f),
                          thickness: 1,
                          indent: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.h),
                  Center(
                    child: SizedBox(
                      width: 292.w,
                      height: 48.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF2c1e10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),

                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FontAwesomeIcons.google,color: Colors.white),

                            Text(
                              "  Google",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("New to QuickBite?",style: TextStyle(
                        color: Color(0XFF94a3b8), fontSize: 14.sp
                      ),),

                      TextButton(
                          onPressed: (){},
                          child: Text(
                            "Create Account",
                            style: TextStyle(color: Color(0XFFf27f0d), fontSize: 14.sp),
                          ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}