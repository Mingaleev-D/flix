import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class GeneralBtnNavBar extends StatelessWidget {
  static const routeName = '/general-btn-nav-bar';
  GeneralBtnNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, newValue, child) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.black,
          currentIndex: newValue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(
            color: Colors.white,
          ),
          unselectedIconTheme: const IconThemeData(
            color: Colors.grey,
          ),
          onTap: (index) {
            indexChangeNotifier.value = index;
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Main'),
            BottomNavigationBarItem(
                icon: Icon(Icons.collections), label: 'New & Hot'),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions_outlined),
                label: 'Fast Laughs'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.arrow_circle_down), label: 'Downloads'),
          ],
        );
      },
    );
  }
}
