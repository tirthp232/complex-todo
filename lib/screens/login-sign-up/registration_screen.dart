import 'package:complex_todos/screens/login-sign-up/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/splash_screen_cloud.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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
                  Container(
                    width: double.infinity,
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
                          width: 54.82.w,
                        ),
                        Text(
                          "Create Account",
                          style: TextStyle(
                            color: const Color(0xFF0B60D7),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  container(
                      user: "Full Name", width: 0, height: 0, marginTop: 250),
                  container(
                      user: "Email ID",
                      image: "assets/email.png",
                      width: 18.38.w,
                      height: 13.13.h,
                      marginTop: 311),
                  container(
                      user: "Password",
                      image: "assets/fluent_eye-show-12-filled.png",
                      width: 21.w,
                      height: 21.h,
                      marginTop: 372),
                  container(
                      user: "Conform Password",
                      image: "assets/fluent_eye-show-12-filled.png",
                      width: 21.w,
                      height: 21.h,
                      marginTop: 433),
                  Container(
                    margin: EdgeInsets.only(left: 134.w, top: 114.h),
                    width: 107.w,
                    height: 107.h,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 11.r,
                      child: Icon(
                        Icons.person_2_outlined,
                        color: Colors.black,
                        size: 30.w,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 204.w, top: 186.h),
                    width: 39.w,
                    height: 39.h,
                    child: CircleAvatar(
                      radius: 11.r,
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 16.29.w,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 17.h,
              ),
              Center(
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  height: 50.h,
                  minWidth: 312.w,
                  color: const Color(0xFF0B60D7),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Create Account',
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
                height: 179.h,
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    )),
                child: Center(
                  child: Text(
                    'Login to your account',
                    style: TextStyle(
                      color: const Color(0xFF1B1D28),
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                    ),
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

Widget container(
    {String? user,
    String? image,
    double? width,
    double? height,
    double? marginTop}) {
  return Container(
    color: Colors.white,
    margin: EdgeInsets.only(
        top: marginTop!.h, left: 32.w, bottom: 11.h, right: 32.w),
    width: 312.w,
    height: 50.h,
    child: TextFormField(
      controller: null,
      decoration: InputDecoration(
        hintText: user,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11.r),
            borderSide:
                BorderSide(color: const Color(0xFF0B60D7), width: 1.5.w)),
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 13.sp,
          color: const Color(0xFF1B1D28).withOpacity(0.3),
        ),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: image != null
              ? Image.asset(
                  image,
                  width: width,
                  height: height,
                  color: const Color(0xFF000000).withOpacity(0.7),
                )
              : Container(),
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
  );
}
