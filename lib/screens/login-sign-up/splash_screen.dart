import 'package:complex_todos/screens/login-sign-up/widgets/splash_screen_cloud.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/Vector 6.png",
              color: const Color(0xFFEEF7FE),
            ),
            cloud(top: 124.h, child: Cloud.fill104),
            cloud(top: 162.h, left: 99.w, child: Cloud.fill104),
            cloud(top: 100.h, left: 186.w, child: Cloud.fill102),
            cloud(top: 172.h, left: 226.w, child: Cloud.fill101),
            Center(
              child: Image.asset(
                "assets/iRoid To do.png",
                width: 262.w,
                height: 218.h,
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
