import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../addtask_screen.dart';

class TodoListTaskAddBody extends StatelessWidget {
  const TodoListTaskAddBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFAFCFE),
      margin: EdgeInsets.only(left: 18.72.w, right: 18.72.w, top: 24.28.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddTaskScreen(),
                  ),
                );
              },
              child: Container(
                width: 90.w,
                height: 25.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFF0B60D7),
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: const Text(
                  "Add Task",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 19.68.h),
            width: 337.56.w,
            height: 93.96.h,
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(11.91.r),
              border: Border.all(
                width: 1.08.w,
                color: Color(0xFFF2F7FF),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: 19.53.w, top: 19.28.h, bottom: 12.29.h),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/Calendar.png",
                        width: 15.w,
                        height: 15.35.h,
                      ),
                      SizedBox(
                        width: 18.91.w,
                      ),
                      Text("Today"),
                      SizedBox(
                        width: 210.6.w,
                      ),
                      Text("1"),
                    ],
                  ),
                ),
                const Divider(
                  height: 0,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 19.53.w,
                    right: 25.53.w,
                    top: 10.85.h,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/Calendar.png",
                        width: 15.w,
                        height: 15.35.h,
                      ),
                      SizedBox(
                        width: 18.91.w,
                      ),
                      Text("Upcoming"),
                      SizedBox(
                        width: 188.w,
                      ),
                      Text("1"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18.45.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Favorites",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 337.56.w,
            height: 51.58.h,
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(11.91.r),
              border: Border.all(
                width: 1.08.w,
                color: Color(0xFFF2F7FF),
              ),
            ),
            child: Container(
              padding: EdgeInsets.only(left: 31.21.w),
              child: Row(
                children: [
                  const Text(
                    '●',
                    style: TextStyle(color: Colors.blue),
                  ),
                  SizedBox(
                    width: 10.69.w,
                  ),
                  const Text(
                    'Podcast',
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tages",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                ),
              ),
              Image.asset(
                "assets/plus.png",
                width: 24.w,
                height: 24.h,
                color: Color(0xFF0B60D7),
              ),
            ],
          ),
          SizedBox(
            height: 12.72.h,
          ),
          Container(
            width: 337.56.w,
            height: 132.29.h,
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(11.91.r),
              border: Border.all(
                width: 1.08.w,
                color: Color(0xFFF2F7FF),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: 19.53.w, top: 18.01.h, bottom: 12.28.h),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/Calendar.png",
                        width: 15.w,
                        height: 15.35.h,
                      ),
                      SizedBox(
                        width: 18.91.w,
                      ),
                      Text("Hiring"),
                      SizedBox(
                        width: 222.1.w,
                      ),
                      Text("1"),
                    ],
                  ),
                ),
                const Divider(
                  height: 0,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 19.53.w,
                    top: 11.09.h,
                    bottom: 14.11.h,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/Calendar.png",
                        width: 15.w,
                        height: 15.35.h,
                      ),
                      SizedBox(
                        width: 18.91.w,
                      ),
                      Text("Sourcing"),
                      SizedBox(
                        width: 206.1.w,
                      ),
                      Text("1"),
                    ],
                  ),
                ),
                const Divider(
                  height: 0,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 19.53.w,
                    top: 10.85.h,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/Calendar.png",
                        width: 15.w,
                        height: 15.35.h,
                      ),
                      SizedBox(
                        width: 18.91.w,
                      ),
                      Text("portfoilo companies"),
                      SizedBox(
                        width: 140.1.w,
                      ),
                      Text("1"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
