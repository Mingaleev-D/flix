import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleSearch extends StatelessWidget {
  final String titleSearch;
  const TitleSearch({super.key, required this.titleSearch});

  @override
  Widget build(BuildContext context) {
    return Text(
      titleSearch,
      textAlign: TextAlign.start,
      style: TextStyle(
          color: Colors.white, fontSize: 21.sp, fontWeight: FontWeight.w700),
    );
  }
}
