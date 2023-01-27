import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddTaskHeader extends StatelessWidget {
  const AddTaskHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: Builder(
                builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                    ),
                    iconSize: 11.41.sp,
                    color: Colors.black,
                  );
                },
              ),
            ),
          ),
          Text(
            "Add Task",
            style: TextStyle(
              color: const Color(0xFF0B60D7),
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 50.w,
            height: 25.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
              color: Color(0xFF0B60D7),
            ),
            child: Text(
              "Save",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
