import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../login/custom_text_field.dart';

class Register extends StatefulWidget {

  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF221910),
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        surfaceTintColor: Colors.transparent,
        title: Text(
          'QuickBite',
          style: TextStyle(color: Color(0XFFf27f0d), fontSize: 18.sp),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create Account',
                style: TextStyle(
                  color: Color(0XFFf1f5f9),
                  fontSize: 32.sp,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Delicious meals are just a few taps away.',
                style: TextStyle(color: Color(0XFF94a3b8), fontSize: 16.sp),
              ),
              SizedBox(height: 45.h),
              Text(
                'Full Name',
                style: TextStyle(
                  color: Color(0XFFf1f5f9),
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 10.h),
              CustomTextField(hintText: "John Doe", width: double.infinity,icon: Icon(Icons.person_outline,weight: 700, )),
              SizedBox(height: 20.h),
              Text(
                'Email Address',
                style: TextStyle(
                  color: Color(0XFFf1f5f9),
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 10.h),
              CustomTextField(hintText: "name@example.com", width: double.infinity,icon: Icon(Icons.email_outlined,weight: 700, )),
              SizedBox(height: 20.h),
              Text(
                'Phone Number',
                style: TextStyle(
                  color: Color(0XFFf1f5f9),
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 10.h),
              CustomTextField(hintText: "+20 155-545-4355", width: double.infinity,icon: Icon(Icons.phone_android,weight: 700, )),
              SizedBox(height: 20.h),
              Text(
                'Password',
                style: TextStyle(
                  color: Color(0XFFf1f5f9),
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 10.h),
              CustomTextField(hintText: "••••••••", width: double.infinity,icon: Icon(Icons.lock_outline,weight: 700), isPassword: true),
              SizedBox(
                width: double.infinity,
                height: 80.h,
                child: Stack(
                  children: [
                    Positioned(
                      top: 7.h,
                      child: Checkbox(
                        value: isChecked, onChanged:(value){
                          setState(() {
                            isChecked = value!;
                          });
                      },
                        activeColor: Color(0xFFF27F0D),
                      ),
                    ),
                    Positioned(
                      left: 40.w,
                      top: 14.h,
                      child: Text(
                          'By creating an account, you agree to our',
                        style: TextStyle(color: Color(0XFF94a3b8), fontSize: 11.sp),
                      ),
                    ),
                    Positioned(
                      left: 237.w,
                      top:0.h ,
                      child: TextButton(
                          onPressed: (){},
                        child: Text(
                            'Terms of service',
                          style: TextStyle(color:Color(0xFFF27F0D), fontSize: 12.sp,
                          ),

                        ),
                      ),
                    ),
                    Positioned(
                      left: 40.w,
                      top:30.h ,
                      child: Text(
                        'and',
                        style: TextStyle(color: Color(0XFF94a3b8), fontSize: 11.sp),
                      ),
                    ),
                    Positioned(
                      left:58.w ,
                      top:16.h,

                      child: TextButton(
                        onPressed: (){},
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 3.w)),
                        child: Text(
                          'Privacy Policy',
                          style: TextStyle(color:Color(0xFFF27F0D), fontSize: 12.sp,
                          ),
                      
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.fromLTRB(43.w, 0, 0, 0),
                child: Row(
                  children: [

                  ],
                ),
              ),
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
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 6.w),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 54.h),
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
                    "OR REGISTER WITH",
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
             SizedBox(height: 29.h),
              Center(
                child: SizedBox(
                  width: double.infinity.w,
                  height: 48.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF2c1e10),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0XFF533110),width: 2.r),
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
              SizedBox(height: 29.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: TextStyle(
                      color: Color(0XFF94a3b8), fontSize: 14.sp
                  ),),

                  TextButton(
                    onPressed: (){},
                    child: Text(
                      "Login",
                      style: TextStyle(color: Color(0XFFf27f0d), fontSize: 14.sp),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}