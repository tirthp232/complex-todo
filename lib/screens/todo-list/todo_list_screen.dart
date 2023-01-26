import 'package:complex_todos/screens/todo-list/widgets/todo_list_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return Scaffold(
      backgroundColor: Color(0xFFFAFCFE),
      drawer: TodoListDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 55.15.h),
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
                            child: Builder(builder: (context) {
                              return IconButton(
                                onPressed: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                icon: const Icon(
                                  Icons.menu,
                                  color: Colors.black,
                                ),
                                iconSize: 11.41.sp,
                                color: Colors.black,
                              );
                            }),
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
            ],
          ),
        ),
      ),
    );
  }
}
