import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_dialog.dart';

class AddTaskbody extends StatefulWidget {
  const AddTaskbody({super.key});

  @override
  State<AddTaskbody> createState() => _AddTaskbodyState();
}

class _AddTaskbodyState extends State<AddTaskbody> {
  bool value = false;
  String? days;

  showCheckBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return CustomDialog(title: "tag");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
              contentPadding:
                  EdgeInsets.only(left: 59.w, top: 24.h, bottom: 18.h),
            ),
          ),
          textformfield(
              title: "Add details", icon: "assets/addtask/Document.png"),
          GestureDetector(
            onTap: () {
              showCheckBox(context);
            },
            child: newMethod(
                title: "Select a tag", icon: "assets/addtask/Category@2x.png"),
          ),
          const Divider(
            height: 0,
          ),
          GestureDetector(
              onTap: () {
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  builder: (context, child) {
                    return CupertinoTimerPicker(
                      backgroundColor: Colors.white,
                      onTimerDurationChanged: (value) {},
                      mode: CupertinoTimerPickerMode.hm,
                    );
                  },
                );
              },
              child: newMethod(
                  title: "Task Time", icon: "assets/addtask/Time Circle.png")),
          const Divider(
            height: 0,
          ),
          GestureDetector(
              onTap: () {
                print("sdfsdf");
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  builder: (context, child) {
                    return CupertinoTimerPicker(
                      backgroundColor: Colors.white,
                      onTimerDurationChanged: (value) {},
                      mode: CupertinoTimerPickerMode.hm,
                    );
                  },
                );
              },
              child: newMethod(
                  title: "Approx time", icon: "assets/addtask/Group.png")),
          const Divider(
            height: 0,
          ),
          newMethod(
              title: "Actual Time", icon: "assets/addtask/Time Circle.png"),
          const Divider(
            height: 0,
          ),
          newMethod(
              title: "Add reminder",
              icon: "assets/addtask/iconoir_reminder-hand-gesture.png"),
          const Divider(
            height: 0,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return CustomDialog(
                    title: "repeat",
                  );
                },
              );
            },
            child: newMethod(
                title: "Do not repeat",
                icon: "assets/addtask/system-uicons_reset.png"),
          ),
          const Divider(
            height: 0,
          ),
          newMethod(title: "Location", icon: "assets/addtask/Location.png"),
          const Divider(
            height: 0,
          ),
          newMethod(
              title: "Dependency On",
              icon: "assets/addtask/carbon_column-dependency.png"),
          const Divider(
            height: 0,
          ),
          newMethod(
              title: "Dependency On",
              icon: "assets/addtask/carbon_column-dependency.png"),
          const Divider(
            height: 0,
          ),
        ],
      ),
    );
  }

  SizedBox newMethod({String? title, String? icon}) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          SizedBox(
            width: 26.w,
          ),
          Image.asset(
            icon!,
            width: 16.67.w,
            height: 18.41.h,
          ),
          SizedBox(
            width: 9.w,
          ),
          Text(title!),
        ],
      ),
    );
  }

  TextField textformfield({String? title, String? icon}) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.only(
            left: 28.75.w,
            top: 26.75.h,
            right: 13.58.w,
            bottom: 26.84.h,
          ),
          child: Image.asset(
            icon!,
            width: 16.67.w,
            height: 18.41.h,
          ),
        ),
        hintText: title,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
        ),
        contentPadding: EdgeInsets.only(top: 28.h, bottom: 28.h),
      ),
    );
  }
}
