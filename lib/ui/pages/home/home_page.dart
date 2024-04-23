import 'package:bordered_text/bordered_text.dart';
import 'package:flix/ui/widgets/home_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/app_assets.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(false);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (context, value, child) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 270.h,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(AppAssets.poster4),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                        Text(
                                          'My list',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w800),
                                        )
                                      ],
                                    ),
                                    const HomePlayBtn(),
                                    Column(
                                      children: [
                                        const Icon(
                                          Icons.info_outline,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                        Text(
                                          'Info',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w800),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const HomeTitle(
                              titleHome: 'Released in the Past Year'),
                          LimitedBox(
                            maxHeight: 180.h,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(10, (index) {
                                return const HomeContainerImage();
                              }),
                            ),
                          ),
                          SizedBox(height: 5.h),
                          const HomeTitle(titleHome: 'Top TV Show'),
                          LimitedBox(
                            maxHeight: 180.h,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(10, (index) {
                                return NumberCard(index: index + 1);
                              }),
                            ),
                          ),
                          const HomeTitle(titleHome: 'Trending Now'),
                          LimitedBox(
                            maxHeight: 180.h,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(10, (index) {
                                return const HomeContainerImage();
                              }),
                            ),
                          ),
                          SizedBox(height: 5.h),
                        ],
                      ),
                    ],
                  ),
                  scrollNotifier.value == true
                      ? AnimatedContainer(
                          duration: const Duration(microseconds: 2000),
                          width: double.infinity,
                          height: 60.h,
                          color: Colors.black87.withOpacity(0.7),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    AppAssets.movieImageLogo,
                                    height: 32,
                                    width: 32,
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.cast,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 10.w),
                                  Container(
                                      color: Colors.blueAccent,
                                      width: 20,
                                      height: 20),
                                  SizedBox(width: 10.w),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('TV Shows',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.sp)),
                                  Text('Movies',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.sp)),
                                  Text('Categories',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.sp)),
                                ],
                              )
                            ],
                          ),
                        )
                      : SizedBox(height: 10.h),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class HomePlayBtn extends StatelessWidget {
  const HomePlayBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        )),
      ),
      icon: const Icon(
        Icons.play_circle_fill_outlined,
        size: 25,
      ),
      label: Text(
        'Play',
        style: TextStyle(fontSize: 18.sp),
      ),
    );
  }
}

class NumberCard extends StatelessWidget {
  final int index;

  const NumberCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(
        children: [
          SizedBox(
            width: 40.w,
            height: 200.h,
          ),
          SizedBox(
            //height: 200.h,
            width: 140.w,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0).r,
                child: Image.asset(
                  AppAssets.poster1,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      Positioned(
        left: 10,
        bottom: -30,
        child: BorderedText(
          strokeWidth: 7.0,
          strokeColor: Colors.red,
          child: Text(
            '$index',
            style: TextStyle(
                decoration: TextDecoration.none,
                decorationColor: Colors.red,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
                fontSize: 120.sp),
          ),
        ),
      ),
    ]);
  }
}

class HomeContainerImage extends StatelessWidget {
  const HomeContainerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 200.h,
      width: 140.w,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0).r,
          child: Image.asset(
            AppAssets.poster1,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
