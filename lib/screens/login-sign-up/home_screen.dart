import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login_screen.dart';
import 'registration_screen.dart';
import 'widgets/splash_screen_cloud.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/Vector 6 (1).png",
                  color: const Color(0xFFEEF7FE),
                ),
                cloud(top: ScreenUtil().setHeight(93.h), child: Cloud.fill103),
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
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    "iRoid Todo",
                    style: TextStyle(
                      fontSize: 38.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  SizedBox(
                    width: 324.w,
                    height: 110.h,
                    child: Text(
                      "Welcome to the world's most powerful productivity platform, designed to make you 10x more effective and efficient. From developing keystone habits to accomplishing long-term goals, Andromeda has you covered.",
                      style: TextStyle(
                          color: const Color(0xFF7B7F9E), fontSize: 14.sp),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r)),
                height: 50.h,
                minWidth: 305.w,
                color: const Color(0xFF0B60D7),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
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
              height: 202.h,
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
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ],
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
