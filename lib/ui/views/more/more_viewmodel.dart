import 'package:car_pooling_app/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class MoreViewModel extends BaseViewModel {
  final List<Map<String, dynamic>> listTileNames = [
    {
      'title': 'My Vehicle',
      'subtitle': 'Add vehicle Information',
      'icon': const Icon(Icons.car_crash),
    },
    {
      'title': 'Support',
      'subtitle': 'Contact us',
      'icon': const Icon(Icons.message),
    },
    {
      'title': 'Privacy Policy',
      'subtitle': 'Know Our Privacy Policies',
      'icon': const Icon(Icons.note),
    },
    {
      'title': 'FAQs',
      'subtitle': 'Get your questions answered',
      'icon': const Icon(Icons.question_mark),
    },
    {
      'title': 'Support',
      'subtitle': 'Contact us',
      'icon': const Icon(Icons.message),
    },
  ];

  final _navigationService = locator<NavigationService>();

  Future<void> navigateToWallet() async {
    await _navigationService.navigateToWalletView();
  }
}
