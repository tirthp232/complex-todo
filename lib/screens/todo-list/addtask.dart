import 'package:complex_todos/screens/todo-list/widgets/addtask_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './widgets/addtask_body.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return Scaffold(
      backgroundColor: Color(0xFFFAFCFE),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 55.15.h),
          child: Column(
            children: [
              AddTaskHeader(),
              Expanded(child: AddTaskbody()),
            ],
          ),
        ),
      ),
    );
  }
}
