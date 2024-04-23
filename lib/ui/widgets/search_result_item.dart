import 'package:flix/ui/widgets/title_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/components/app_assets.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleSearch(titleSearch: 'Movie & TV'),
        SizedBox(height: 10.h),
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1 / 2,
            children: List.generate(20, (index) {
              return const SearchResultItemTile();
            }),
          ),
        ),
      ],
    );
  }
}

class SearchResultItemTile extends StatelessWidget {
  const SearchResultItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeMQ = MediaQuery.of(context).size;
    return SizedBox(
      height: sizeMQ.width * 0.2,
      width: sizeMQ.width * 0.4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0).r,
        child: Image.asset(
          AppAssets.poster1,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
