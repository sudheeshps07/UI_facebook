import 'package:appnew/Screen_home/sreen_home.dart';
import 'package:flutter/material.dart';

class MoneyManagerBottomnavgationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: SreenHome.selectedIndexNotifier,
      builder: (BuildContext ctx,int updatedIndex, Widget? _) {
        return BottomNavigationBar(
            currentIndex:updatedIndex,
            selectedItemColor: Colors.redAccent,
            unselectedItemColor: Colors.grey,
            onTap: (newIndex) {
              SreenHome.selectedIndexNotifier.value = newIndex;
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: 'category')
            ]);
      },
    );
  }
}
