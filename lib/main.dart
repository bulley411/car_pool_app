import 'package:car_pooling_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:car_pooling_app/app/app.bottomsheets.dart';
import 'package:car_pooling_app/app/app.dialogs.dart';
import 'package:car_pooling_app/app/app.locator.dart';
import 'package:car_pooling_app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

import 'ui/common/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            elevation: 0,
            iconTheme: IconThemeData(color: kcBackgroundColor),
            color: kcVeryLightGrey,
          ),
          textSelectionTheme:
              const TextSelectionThemeData(cursorColor: kcVeryLightGrey),
          primaryColor: kcLightGrey,
          focusColor: kcLightGrey,
          inputDecorationTheme: inputDecorationTheme()),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
