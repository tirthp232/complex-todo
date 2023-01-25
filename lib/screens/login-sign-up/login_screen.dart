import 'package:complex_todos/screens/login-sign-up/widgets/splash_screen_cloud.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'registration_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return Scaffold(
      backgroundColor: const Color(0xFFFAFCFE),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/Vector 6 (1).png",
                    color: const Color(0xFFEEF7FE),
                  ),
                  cloud(
                      top: ScreenUtil().setHeight(93.h), child: Cloud.fill103),
                  cloud(
                      top: ScreenUtil().setHeight(131.h),
                      left: ScreenUtil().setHeight(95.w),
                      child: Cloud.fill104),
                  cloud(
                      top: ScreenUtil().setHeight(69.54.h),
                      left: ScreenUtil().setHeight(182.w),
                      child: Cloud.fill102),
                  cloud(
                      top: ScreenUtil().setHeight(141.5.h),
                      left: ScreenUtil().setHeight(222.71.w),
                      child: Cloud.fill101),
                  Padding(
                    padding: EdgeInsets.only(top: 55.54.h, left: 37.42.w),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20.r,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                            iconSize: 11.41.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 88.82.w,
                        ),
                        Text(
                          "Login",
                          style: TextStyle(
                            color: const Color(0xFF0B60D7),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(left: 33.w, bottom: 16.h),
                width: 312.w,
                height: 50.h,
                child: TextFormField(
                  controller: null,
                  decoration: InputDecoration(
                    hintText: "Email ID",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11.r),
                        borderSide: BorderSide(
                            color: const Color(0xFF0B60D7), width: 1.5.w)),
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13.sp,
                      color: const Color(0xFF1B1D28).withOpacity(0.3),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/email.png",
                        width: 18.38.w,
                        height: 13.13.h,
                        color: Color(0xFF000000).withOpacity(0.3),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.r),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(left: 33.w, bottom: 16.h),
                width: 312.w,
                height: 50.h,
                child: TextFormField(
                  controller: null,
                  decoration: InputDecoration(
                    hintText: "Password",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.r),
                      borderSide: BorderSide(
                          color: const Color(0xFF0B60D7), width: 1.5.w),
                    ),
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13.sp,
                      color: const Color(0xFF1B1D28).withOpacity(0.3),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/fluent_eye-show-12-filled.png",
                        width: 21.w,
                        height: 21.h,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.r),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(right: 44.w, bottom: 29.h),
                  width: 375.w,
                  child: Text(
                    "Forgot password?",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                      color: const Color(0xFF0B60D7),
                    ),
                  ),
                ),
              ),
              Center(
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  height: 50.h,
                  minWidth: 309.w,
                  color: const Color(0xFF0B60D7),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 16.sp),
                      ),
                      SizedBox(
                        width: 18.w,
                      ),
                      Image.asset(
                        "assets/Vector 1.png",
                        width: 14.w,
                        height: 6.h,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 204.h,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (c) => const RegistrationScreen())),
                child: Center(
                  child: Text(
                    'Create an account',
                    style: TextStyle(
                        color: const Color(0xFF1B1D28),
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget cloud({double? top, double? left, Widget? child}) {
  return Container(
    margin: EdgeInsets.only(top: top ?? 0, left: left ?? 0),
    child: child,
  );
}
