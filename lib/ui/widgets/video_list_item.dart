import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoListItem extends StatelessWidget {
  final int index;

  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, bottom: 16).r,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// left side
                CircleAvatar(
                  radius: 26.r,
                  backgroundColor: Colors.black54,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),

                /// right side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //const CircleAvatar(),
                    const VideoAction(icon: Icons.emoji_emotions, title: 'LOL'),
                    SizedBox(height: 5.h),
                    const VideoAction(icon: Icons.add, title: 'My list'),
                    SizedBox(height: 5.h),
                    const VideoAction(icon: Icons.share, title: 'Share'),
                    SizedBox(height: 5.h),
                    const VideoAction(
                        icon: Icons.play_arrow_sharp, title: 'Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoAction extends StatelessWidget {
  final IconData icon;
  final String title;

  const VideoAction({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0).r,
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 24),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 14.sp),
          ),
        ],
      ),
    );
  }
}
