import 'package:complex_todos/screens/login-sign-up/setting_screen.dart';
import 'package:complex_todos/screens/todo-list/todo_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const TodoListScreen(),
    );
  }
}
