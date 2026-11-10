import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../home/home_view.dart';
import '../more/more_view.dart';

class BottomNavBarViewModel extends BaseViewModel {
  int selectedIndex = 0;

  static const List<Widget> widgetOptions = <Widget>[
    HomeView(),
    Center(child: Text('My Trips')),
    Center(child: Text('Chats')),
    MoreView()
  ];

  void onTabChange(index) {
    selectedIndex = index;
    rebuildUi();
  }
}
