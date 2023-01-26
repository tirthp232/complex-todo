import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingScreeen extends StatelessWidget {
  const SettingScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 55.54.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                          // Navigator.pop(context);
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
                      margin: EdgeInsets.only(left: 79.82.w),
                      child: Text(
                        "Settings",
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
              Container(
                margin:
                    EdgeInsets.only(top: 67.25.h, left: 28.w, right: 45.16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWidget("Change Language", context),
                    textWidget("Change Password", context),
                    textWidget("Terms & conditions", context),
                    textWidget("Privacy Policies", context),
                    Container(
                      margin: EdgeInsets.only(top: 246.45.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Enable 2 Step Verification",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Image.asset(
                            "assets/Switch.png",
                            width: 37.84.w,
                            height: 23.h,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 67.h,
                      ),
                      padding: EdgeInsets.only(bottom: 44.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "iRoid Todo",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                              color: const Color(0xFF222124),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "V 0.0.525(Beta)",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 11.sp,
                                color: Color(0xFF222124).withOpacity(0.2)),
                          )
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

Widget textWidget(String text, BuildContext context) {
  return GestureDetector(
    // onTap: () => Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => ,
    //   ),
    // ),
    child: Container(
      margin: EdgeInsets.only(bottom: 32.h),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16.sp,
          color: Color(0xFF0B60D7),
        ),
      ),
    ),
  );
}
