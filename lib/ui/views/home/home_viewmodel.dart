import 'package:car_pooling_app/ui/views/home/components/book_a_trip.dart';
import 'package:car_pooling_app/ui/views/home/components/plan_a_trip.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
//Toggle
  int activePageIndex = 0;

  bool kycStatus = false;

  List<Widget> pages = const [PlanATrip(), BookATrip()];

  void onToggle(index) {
    activePageIndex = index;
    rebuildUi();
  }
}
