import 'package:car_pooling_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';

InputDecorationTheme inputDecorationTheme() {
  return const InputDecorationTheme(
    hintStyle: TextStyle(color: kcLightGrey, fontSize: 13),
    labelStyle: TextStyle(height: 0.1, color: kcMediumGrey, fontSize: 18),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: kcLightGrey),
    ),
  );
}
