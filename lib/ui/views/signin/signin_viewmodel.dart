import 'package:car_pooling_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class SigninViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future<void> navigateToSignUp() async {
    await _navigationService.navigateToMyVehiclesView();
  }
}
