import 'package:complex_todos/model/model.dart';
import 'package:complex_todos/screens/todo-list/addtask.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodoListTaskAddBody extends StatelessWidget {
  const TodoListTaskAddBody({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return Container(
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
                      builder: (context) => AddTask(),
                    ));
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
                ListTile(
                  dense: true,
                  visualDensity: VisualDensity(horizontal: -2, vertical: -2),
                  leading: Model.list.first.icon,
                  title: Text(
                    Model.list.first.title!,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Text(
                    Model.list.first.num.toString(),
                  ),
                ),
                Divider(),
                ListTile(
                  dense: true,
                  visualDensity: VisualDensity(horizontal: -1, vertical: -2),
                  leading: Model.list.last.icon,
                  title: Text(
                    Model.list.last.title!,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Text(
                    Model.list.last.num.toString(),
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
            child: ListTile(
              leading: Text(
                '●',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15.sp,
                ),
              ),
              title: Text(
                "Podcast",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
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
                ListTile(
                  dense: true,
                  visualDensity: VisualDensity(vertical: -3),
                  leading: Text(
                    '●',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15.sp,
                    ),
                  ),
                  title: Text(
                    "Hiring",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                    ),
                  ),
                  trailing: Text(
                    "3",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  dense: true,
                  visualDensity: VisualDensity(vertical: -4),
                  leading: Text(
                    '●',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15.sp,
                    ),
                  ),
                  title: Text(
                    "Sourcing",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                    ),
                  ),
                  trailing: Text(
                    "1",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  dense: true,
                  visualDensity: VisualDensity(vertical: -3),
                  leading: Text(
                    '●',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15.sp,
                    ),
                  ),
                  title: Text(
                    "PortFoilo Companies",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                    ),
                  ),
                  trailing: Text(
                    "2",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
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
