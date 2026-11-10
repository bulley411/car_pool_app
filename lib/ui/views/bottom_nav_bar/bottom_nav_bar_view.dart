import 'package:car_pooling_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:stacked/stacked.dart';

import 'bottom_nav_bar_viewmodel.dart';

class BottomNavBarView extends StackedView<BottomNavBarViewModel> {
  const BottomNavBarView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BottomNavBarViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: BottomNavBarViewModel.widgetOptions
          .elementAt(viewModel.selectedIndex),
      bottomNavigationBar: SafeArea(
        child: GNav(
          gap: 8,
          backgroundColor: kkWhite,
          color: kcLightGrey,
          activeColor: kkPrimaryColor,
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
            ),
            GButton(
              icon: Icons.time_to_leave_outlined,
              text: 'My trips',
            ),
            GButton(
              icon: Icons.message_outlined,
              text: 'Chats',
            ),
            GButton(
              icon: Icons.more_vert,
              text: 'More',
            ),
          ],
          selectedIndex: viewModel.selectedIndex,
          onTabChange: viewModel.onTabChange,
        ),
      ),
    );
  }

  @override
  BottomNavBarViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BottomNavBarViewModel();
}
