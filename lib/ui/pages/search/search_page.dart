import 'package:flix/core/components/app_assets.dart';
import 'package:flix/ui/widgets/search_result_item.dart';
import 'package:flix/ui/widgets/title_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0).w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(.3),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: const TextStyle(color: Colors.white),
              ),
              SizedBox(height: 7.h),
              // const Expanded(child: SearchIdlesTopSearches()),
              const Expanded(child: SearchResultItem()),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchIdlesTopSearches extends StatelessWidget {
  const SearchIdlesTopSearches({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeMQ = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleSearch(titleSearch: 'Top searches'),
        SizedBox(height: 10.h),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            //physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.h);
            },
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  SizedBox(
                    height: sizeMQ.width * 0.3,
                    width: sizeMQ.width * 0.4,
                    child: Image.asset(
                      AppAssets.poster1,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Text(('Movie Name') * 10,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                        )),
                  ),
                  SizedBox(width: 5.w),
                  const Icon(CupertinoIcons.videocam_circle_fill,
                      color: Colors.white),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
