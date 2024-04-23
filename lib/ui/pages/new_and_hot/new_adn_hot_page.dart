import 'package:flix/core/components/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewAdnHotPage extends StatelessWidget {
  const NewAdnHotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'New & Hot',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700),
            ),
            actions: [
              const Icon(
                Icons.cast,
                color: Colors.white,
              ),
              SizedBox(width: 10.w),
              Container(color: Colors.blueAccent, width: 20, height: 20),
              SizedBox(width: 10.w),
            ],
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 0,
              dividerColor: Colors.transparent,
              labelStyle:
                  TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
              unselectedLabelColor: Colors.white,
              unselectedLabelStyle:
                  TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0).r,
              ),
              tabs: const [
                Tab(
                  text: 'Coming soon 📹',
                ),
                Tab(
                  text: 'Everyone\'s Watching 📼',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              BuildTabBarViewComingSoon(),
              BuildTabBarViewEveryonesWatching(),
              // BuildTabBarViewComminSoon(titleTab: 'Everyone\'s Watching 📹'),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildTabBarViewEveryonesWatching extends StatelessWidget {
  const BuildTabBarViewEveryonesWatching({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class BuildTabBarViewComingSoon extends StatelessWidget {
  const BuildTabBarViewComingSoon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Row(
          children: [
            SizedBox(
              width: 53.w,
              height: 300.h,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'April',
                    style: TextStyle(color: Colors.white, fontSize: 16.sp),
                  ),
                  Text(
                    '11',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        letterSpacing: 3,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300.h,
              width: 300.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 150.h,
                        child: Image.asset(
                          AppAssets.poster4,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 5,
                        child: CircleAvatar(
                          radius: 16.r,
                          backgroundColor: Colors.black54,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.volume_off_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text('Joker',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 40.sp)),
                          const Text('Coming on Friday',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      const Spacer(),
                      const Column(
                        children: [
                          Icon(
                            Icons.add_alert_sharp,
                            color: Colors.white,
                          ),
                          Text('Remind me',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      SizedBox(width: 10.w),
                      const Column(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: Colors.white,
                          ),
                          Text('Info', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      SizedBox(width: 10.w)
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text('Description',
                      style: TextStyle(color: Colors.grey)),
                  const Text(
                      'The film, loosely based on DC Comics characters, stars Joaquin Phoenix as the Joker. Set in 1981, it follows Arthur Fleck, a failed clown and aspiring stand-up comedian whose descent into mental illness and nihilism inspires a violent countercultural revolution against the wealthy in a decaying Gotham City.',
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
