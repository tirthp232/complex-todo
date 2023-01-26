import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 55.54.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 37.86.w, right: 33.39.w),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(37.86.r),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                          iconSize: 11.41.sp,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 45.82.w),
                        child: Text(
                          "Change Password",
                          style: TextStyle(
                            color: const Color(0xFF0B60D7),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 84.7.h,
                ),
                newTextField("Current Password"),
                newTextField("New Password"),
                newTextField("Confirm new password"),
                SizedBox(
                  height: 195.94.h,
                ),
                MaterialButton(
                  onPressed: () {},
                  color: const Color(0xFF0B60D7),
                  minWidth: 222.75.w,
                  height: 45.h,
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11.r),
                    borderSide: BorderSide.none,
                  ),
                  child: Text(
                    "CHANGE PASWORD",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 11.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container newTextField(String textName) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.h),
      height: 81.h,
      width: 312.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textName,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
              color: const Color(0xFF1B1D28),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 4.h),
            width: 312.w,
            height: 50.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11.r),
              color: Colors.white,
            ),
            child: TextFormField(
              obscureText: true,
              obscuringCharacter: '●',
              controller: null,
              decoration: InputDecoration(
                hintText: "",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11.r),
                  borderSide:
                      BorderSide(color: const Color(0xFF0B60D7), width: 1.5.w),
                ),
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: const Color(0xFF1B1D28).withOpacity(0.3),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11.r),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
