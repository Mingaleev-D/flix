import 'package:flix/core/components/app_assets.dart';
import 'package:flix/ui/widgets/main_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DowloadsPage extends StatelessWidget {
  DowloadsPage({super.key});

  final List posterList = [
    AppAssets.poster1,
    AppAssets.poster2,
    AppAssets.poster3,
  ];

  @override
  Widget build(BuildContext context) {
    final sizeMQ = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, kToolbarHeight),
          child: MainAppBar(
            title: 'Downloads',
          ),
        ),
        body: ListView(
          children: [
            SizedBox(height: 8.h),
            Row(
              children: [
                SizedBox(width: 8.w),
                const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                SizedBox(width: 8.w),
                Text('Smart Dowloads',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400)),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Introducing Downloads for you',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.w),
              child: Text(
                textAlign: TextAlign.center,
                'We will download a personalised selection of movies and shows for you, so there\'s always something to watch on your device.',
                style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),

            Container(
              width: sizeMQ.width,
              height: sizeMQ.height * 0.48,
              color: Colors.black,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: sizeMQ.width * 0.44,
                    backgroundColor: Colors.grey,
                  ),
                  DowloadsImage(
                    angle: 20 * 3.14 / 180,
                    sizeMQ: sizeMQ,
                    margin: EdgeInsets.only(left: 130.w, bottom: 60.h),
                    posterList: posterList[1],
                  ),
                  DowloadsImage(
                    angle: -20 * 3.14 / 180,
                    sizeMQ: sizeMQ,
                    margin: EdgeInsets.only(right: 130.w, bottom: 60.h),
                    posterList: posterList[0],
                  ),
                  DowloadsImage(
                    angle: 0 * 3.14 / 180,
                    sizeMQ: sizeMQ,
                    margin: EdgeInsets.only(right: 0.w),
                    posterList: posterList[2],
                  ),
                ],
              ),
            ),

            /// кнопки
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: MaterialButton(
                color: Colors.blueAccent,
                onPressed: () {},
                child: Text(
                  'Set up',
                  style: TextStyle(color: Colors.white, fontSize: 18.sp),
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: MaterialButton(
                color: Colors.white,
                onPressed: () {},
                child: Text(
                  'See what you can download',
                  style: TextStyle(color: Colors.black, fontSize: 16.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DowloadsImage extends StatelessWidget {
  const DowloadsImage({
    super.key,
    required this.sizeMQ,
    required this.posterList,
    this.angle = 0.0,
    required this.margin,
  });

  final Size sizeMQ;
  final String posterList;
  final double angle;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Container(
        width: sizeMQ.width * 0.40,
        height: sizeMQ.width * 0.7,
        margin: margin,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0).r,
            image: DecorationImage(
              image: AssetImage(posterList),
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
