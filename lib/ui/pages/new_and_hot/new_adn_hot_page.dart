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
          body: TabBarView(
            children: [
              BuildTabBarView(titleTab: 'Coming soon 📹'),
              BuildTabBarView(titleTab: 'Everyone\'s Watching 📹'),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildTabBarView extends StatelessWidget {
  final String titleTab;
  const BuildTabBarView({super.key, required this.titleTab});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        titleTab,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
