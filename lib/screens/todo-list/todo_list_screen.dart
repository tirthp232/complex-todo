import 'package:complex_todos/screens/todo-list/widgets/todo_list_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/todo_list_header.dart';

class TodoListScreen extends StatelessWidget {
  TodoListScreen({super.key, this.title});

  String? title;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return Scaffold(
      backgroundColor: Color(0xFFFAFCFE),
      drawer: TodoListDrawer(title: title),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 55.15.h),
          child: Column(
            children: [
              TodoListHeader(title: title),
            ],
          ),
        ),
      ),
    );
  }
}
