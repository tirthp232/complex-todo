import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddTaskbody extends StatelessWidget {
  const AddTaskbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.9.sp),
                  width: 1.w,
                ),
              ),
              hintText: "Add title",
              hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20.sp,
              ),
              contentPadding: EdgeInsets.only(left: 59.w),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              suffixIcon: Image.asset("assets/addtask/Document.png"),
              hintText: "Add details",
              hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
              ),
              contentPadding:
                  EdgeInsets.only(left: 59.w, top: 20.h, bottom: 20.h),
            ),
          ),
        ],
      ),
    );
  }
}
