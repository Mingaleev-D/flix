import 'package:flix/ui/widgets/video_list_item.dart';
import 'package:flutter/material.dart';

class FastLaughs extends StatelessWidget {
  const FastLaughs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(10, (intIndex) {
            return VideoListItem(index: intIndex);
          }),
        ),
      ),
    );
  }
}
