import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTask extends StatelessWidget {
  const CustomTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 55.04.h),
              color: Color(0xFFFAFCFE),
              padding: EdgeInsets.only(left: 37.86.w, right: 33.39.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 41.76.w,
                    height: 41.h,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(37.86.r),
                      ),
                      child: Builder(builder: (context) {
                        return IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.black,
                          ),
                          iconSize: 11.41.sp,
                          color: Colors.black,
                        );
                      }),
                    ),
                  ),
                  Text(
                    "Custom recurrence",
                    style: TextStyle(
                      color: const Color(0xFF0B60D7),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  CircleAvatar(
                    radius: 20.r,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/notification.png",
                        width: 12.w,
                        height: 12.h,
                      ),
                      iconSize: 12.sp,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 22.2.h, horizontal: 38.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Repeat every"),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.w),
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: Text(
                          "1",
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.w),
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: Text(
                          "1",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
