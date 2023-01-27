import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Model {
  Image? icon;
  String? title;
  int? num;

  Model({this.title, this.num, this.icon});

  static final List<Model> list = [
    Model(
      icon: Image.asset(
        "assets/1.png",
        width: 20.w,
        height: 20.h,
      ),
      title: "Today",
      num: 1,
    ),
    Model(
      icon: Image.asset(
        "assets/Calendar.png",
        width: 20.w,
        height: 20.h,
      ),
      title: "Upcoming",
      num: 7,
    ),
  ];
  static final List<Model> list1 = [
    Model(
      title: "Hiring",
      num: 1,
    ),
    Model(
      title: "Sourcing",
      num: 7,
    ),
    Model(
      title: "Portfolio Companies",
      num: 7,
    ),
  ];
}
