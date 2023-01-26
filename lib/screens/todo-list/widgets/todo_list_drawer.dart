import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodoListDrawer extends StatelessWidget {
  const TodoListDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(
          right: 24.w,
          left: 24.w,
          top: 65.55.h,
        ),
        child: Column(
          children: [
            Container(
              width: 230.w,
              height: 140.89.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(
                  width: 1.w,
                  color: const Color(0xFFE7F3FF),
                ),
                color: const Color(0xFFFFFFFF),
              ),
              child: Container(
                width: 201.46.w,
                height: 105.26.h,
                margin: EdgeInsets.only(
                  top: 20.h,
                  left: 14.27.w,
                  right: 14.27.w,
                  bottom: 15.63.h,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: const AssetImage("assets/3.png"),
                          radius: 34.1.r,
                        ),
                        SizedBox(
                          width: 11.11.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nuri Kmaoto",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Nuri15@gmail.com",
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF222124).withOpacity(0.2.sp),
                              ),
                            ),
                            Text(
                              "Edit Profile",
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF0B60D7),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 201.46.w,
                      height: 35.53.h,
                      decoration: BoxDecoration(),
                      child: Row(children: []),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
