import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Groups extends StatelessWidget {
  const Groups({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 31.37.h),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: 37.86.w, right: 33.39.w, bottom: 15.06.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 41.76.w,
                      height: 41.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(37.86.r),
                            ),
                            child: IconButton(
                              onPressed: () {
                                // Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.menu,
                                color: Colors.black,
                              ),
                              iconSize: 11.41.sp,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            width: 18.63.w,
                            height: 18.63.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFEC856),
                              borderRadius: BorderRadius.circular(3.88.r),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "4",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Today",
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
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(
                    left: 19.71.w,
                    right: 19.71.w,
                  ),
                  children: [
                    Container(
                      width: 323.08.w,
                      height: 119.77.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.sp),
                        color: const Color(0XFFD9E8FF),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 14.23.h, bottom: 18.04.h, left: 16.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Today’s To-do list",
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF333333),
                              ),
                            ),
                            Text(
                              "6 Task",
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF0B60D7),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.77.h),
                      padding: EdgeInsets.only(top: 10.62.h, left: 12.81.w),
                      width: 321.76.w,
                      height: 130.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.sp),
                        color: const Color(0XFFFFFFFF),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 253.w,
                            height: 84.h,
                            margin: EdgeInsets.only(right: 55.86.w),
                            child: Text(
                              "Growth is painful. Change is painful. But nothing is as painful as staying stuck somewhere you don’t belong.",
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 111.w,
                                height: 16.h,
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Narayan Murthi, 2001",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 9.sp,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 23.79.w),
                                child: Text(
                                  "Open Journal ->",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.sp,
                                    color: Color(0xFF0B60D7),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 335.57.w,
                      height: 68.23.h,
                      margin: EdgeInsets.only(top: 17.57.h),
                      padding: EdgeInsets.only(left: 24.31.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.sp),
                        color: Color(0xFFF2BC48),
                      ),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/happy_light.png"),
                          ),
                          SizedBox(
                            width: 17.8.w,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 18.11.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Meditate",
                                  style: TextStyle(
                                    color: Color(0xFF222124),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                Text(
                                  "Today; 2/2",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 149.67.w,
                          ),
                          const Icon(
                            Icons.add,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 335.57.w,
                      height: 68.23.h,
                      margin: EdgeInsets.only(top: 17.57.h),
                      padding: EdgeInsets.only(left: 24.31.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.sp),
                        color: Color(0xFF9F6452),
                      ),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/happy_light.png"),
                          ),
                          SizedBox(
                            width: 17.8.w,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 18.11.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Exercise",
                                  style: TextStyle(
                                    color: Color(0xFF222124),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                Text(
                                  "Today; 2/6",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 149.67.w,
                          ),
                          const Icon(
                            Icons.add,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.77.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.78.w, vertical: 16.64.h),
                      width: 335.57.w,
                      height: 119.09.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.sp),
                        color: const Color(0XFFF2F7FF),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.only(left: 2.25.w, right: 2.25.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Current routine",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "9:40 - 10:20",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: Color(0xFF0B60D7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 304.02.w,
                            height: 57.67.h,
                            margin: EdgeInsets.only(top: 10.15.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.r),
                              color: Colors.white,
                            ),
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 12.51.w,
                                top: 8.81.h,
                                bottom: 5.31.h,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Image.asset(
                                      "assets/si-glyph_bow-tie.png",
                                      width: 18.w,
                                      height: 18.h,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "MAKE BREAKFAST AND READ",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16.23.h),
                      padding: EdgeInsets.only(top: 13.96.h),
                      width: 335.57.w,
                      height: 141.72.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21.r),
                        color: const Color(0xFFFFF9EB),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Image.asset(
                                "assets/memoji  male 18.png",
                                width: 40.w,
                                height: 39.h,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 36.w),
                                child: Image.asset(
                                  "assets/memoji female 19 (1).png",
                                  width: 40.w,
                                  height: 39.h,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.01.h),
                            child: Text(
                              "You have 2 meetings today",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
