import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_bmi_app/app/app.locator.dart';
import 'package:stacked_bmi_app/services/bmi_service.dart';
import 'package:stacked_bmi_app/ui/common/app_colors.dart';
import 'package:stacked_services/stacked_services.dart';

class ResultViewModel extends BaseViewModel {
  final NavigationService navigationService = locator<NavigationService>();
  final BmiService bmiService = locator<BmiService>();

  double get bmi => bmiService.mainBmi;

  Color bmiColor = wTPrimaryColor;

  void bmiColorSelection() {
    if (bmi < 18.5) {
      //underweight
      bmiColor = Colors.yellow;
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      //normal
      bmiColor = wTPrimaryColor;
    } else if (bmi >= 25 && bmi <= 29.9) {
      //overweight
      bmiColor = Colors.redAccent;
    } else if (bmi >= 30) {
      //obese
      bmiColor = Colors.red;
    }
  }
}
