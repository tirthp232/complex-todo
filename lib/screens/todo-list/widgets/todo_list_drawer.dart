import 'package:complex_todos/screens/todo-list/todo_list_screen.dart';
import 'package:complex_todos/screens/todo-list/todo_list_taskadd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodoListDrawer extends StatelessWidget {
  TodoListDrawer({super.key, this.title});
  String? title;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.w,
          top: 40.55.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/3.png",
                            width: 56.w,
                            height: 56.h,
                          ),
                          SizedBox(
                            width: 11.11.w,
                          ),
                          Column(
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
                        margin: EdgeInsets.only(top: 15.64.h),
                        decoration: BoxDecoration(
                          color: Color(0xFFE9F2FF),
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 11.67.w),
                              child: Text(
                                "Manage Connections",
                                style: TextStyle(
                                  color: Color(0xFF0B60D7),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 5.58.w,
                                top: 8.68.h,
                                bottom: 8.21.h,
                                right: 28.2.w,
                              ),
                              alignment: Alignment.center,
                              width: 18.63.w,
                              height: 18.63.h,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF0B60D7),
                                  borderRadius: BorderRadius.circular(3.88.r)),
                              child: const Text(
                                "5",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Image.asset(
                              "assets/Vector 3.png",
                              width: 2.72.w,
                              height: 5.7.h,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.34.w, top: 19.93.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "D A S H B O A R D",
                      style: TextStyle(
                        color: Color(0xFF222124),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 25.89.h,
                    ),
                    text(context, "Today"),
                    SizedBox(
                      height: 21.78.h,
                    ),
                    text(context, "This Week"),
                    SizedBox(
                      height: 33.3.h,
                    ),
                    Text(
                      "T O O L S",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 11.sp,
                        color: Color(0xFF222124),
                      ),
                    ),
                    SizedBox(
                      height: 26.3.h,
                    ),
                    text(context, "To-Do List"),
                    SizedBox(
                      height: 32.1.h,
                    ),
                    text(context, "Journal"),
                    SizedBox(
                      height: 32.1.h,
                    ),
                    text(context, "Schedule & Routine"),
                    SizedBox(
                      height: 32.1.h,
                    ),
                    text(context, "Relationships"),
                    SizedBox(
                      height: 32.1.h,
                    ),
                    text(context, "Habits"),
                    SizedBox(
                      height: 32.1.h,
                    ),
                    text(context, "Objactives and key results"),
                    SizedBox(
                      height: 32.1.h,
                    ),
                    text(context, "Mass Message"),
                    SizedBox(
                      height: 53.83.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.settings,
                          weight: 19.w,
                          color: title == "Settings"
                              ? Color(0xFF0B60D7)
                              : Color(0xFF222124).withOpacity(0.2),
                        ),
                        SizedBox(
                          width: 7.5.h,
                        ),
                        text(context, "Settings"),
                      ],
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

  GestureDetector text(BuildContext context, text) {
    return GestureDetector(
      onTap: () {
        text == "To-Do List"
            ? Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => TodoListTaskAdd(
                    title: text,
                  ),
                ),
              )
            : Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => TodoListScreen(
                    title: text,
                  ),
                ),
              );
      },
      child: Text(
        text,
        style: TextStyle(
          fontWeight: text == title ? FontWeight.w600 : FontWeight.w400,
          fontSize: 16.sp,
          color: text == title
              ? Color(0xFF0B60D7)
              : Color(0xFF222124).withOpacity(0.2),
        ),
      ),
    );
  }
}
