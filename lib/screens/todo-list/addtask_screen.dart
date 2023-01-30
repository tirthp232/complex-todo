import 'package:complex_todos/screens/todo-list/widgets/addtask_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './widgets/addtask_body.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFCFE),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 55.h),
          child: Column(
            children: const [
              AddTaskHeader(),
              Expanded(child: AddTaskbody()),
            ],
          ),
        ),
      ),
    );
  }
}
