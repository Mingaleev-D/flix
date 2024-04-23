import 'package:flix/ui/pages/dowloads/dowloads_page.dart';
import 'package:flix/ui/pages/fast_laughs/fast_laughs.dart';
import 'package:flix/ui/pages/home/home_page.dart';
import 'package:flix/ui/pages/new_and_hot/new_adn_hot_page.dart';
import 'package:flix/ui/pages/search/search_page.dart';
import 'package:flix/ui/widgets/general_btn_nav_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  static String routeName = '/main-page';
  MainPage({super.key});

  final _pages = [
    const HomePage(),
    const NewAdnHotPage(),
    const FastLaughs(),
    const SearchPage(),
    DowloadsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, newPageValue, child) {
          return _pages[newPageValue];
        },
      ),
      bottomNavigationBar: GeneralBtnNavBar(),
    );
  }
}
