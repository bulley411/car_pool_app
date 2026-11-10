import 'package:car_pooling_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:car_pooling_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:car_pooling_app/ui/views/home/home_view.dart';
import 'package:car_pooling_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:car_pooling_app/ui/views/signin/signin_view.dart';
import 'package:car_pooling_app/ui/views/signup/signup_view.dart';
import 'package:car_pooling_app/ui/views/phone_validation/phone_validation_view.dart';
import 'package:car_pooling_app/ui/views/bottom_nav_bar/bottom_nav_bar_view.dart';
import 'package:car_pooling_app/ui/views/more/more_view.dart';
import 'package:car_pooling_app/ui/views/wallet/wallet_view.dart';
import 'package:car_pooling_app/ui/views/my_vehicles/my_vehicles_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: SigninView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: PhoneValidationView),
    MaterialRoute(page: BottomNavBarView),
    MaterialRoute(page: MoreView),
    MaterialRoute(page: WalletView),
    MaterialRoute(page: MyVehiclesView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
