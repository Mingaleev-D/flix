import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainAppBar extends StatelessWidget {
  final String title;
  const MainAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10.w),
        Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontSize: 24.sp,
              fontWeight: FontWeight.w700),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: Colors.white,
        ),
        SizedBox(width: 10.w),
        Container(color: Colors.blueAccent, width: 20, height: 20),
        SizedBox(width: 10.w),
      ],
    );
  }
}
