import 'package:complex_todos/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/splash_screen_cloud.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Cloud.vectorImage,
                cloud(top: 124.h, child: Cloud.fill103),
                cloud(top: 162.h, left: 99.w, child: Cloud.fill104),
                cloud(top: 100.h, left: 186.w, child: Cloud.fill102),
                cloud(top: 172.h, left: 226.w, child: Cloud.fill101),
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
                      builder: (context) => LoginScreen(),
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
            Center(
                child: Text(
              'Create an account',
              style: TextStyle(
                  color: Color(0xFF1B1D28),
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp),
            )),
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
