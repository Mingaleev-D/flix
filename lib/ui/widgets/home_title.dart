import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTitle extends StatelessWidget {
  final String titleHome;
  const HomeTitle({super.key, required this.titleHome});

  @override
  Widget build(BuildContext context) {
    return Text(
      titleHome,
      textAlign: TextAlign.start,
      style: TextStyle(
          color: Colors.white, fontSize: 21.sp, fontWeight: FontWeight.w700),
    );
  }
}
