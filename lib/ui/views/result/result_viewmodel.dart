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
  String bmiDescription = "";
  String bmiStatus = "";

  void bmiStringColorSelection() {
    if (bmi < 18.5) {
      //underweight
      bmiStatus = "Underweight";
      bmiColor = Colors.yellow;
      bmiDescription = """Your BMI is ${bmi.toStringAsFixed(1)}. 
Are you on a diet, or is the wind just stronger than you? 
Eat something before you fly away, my guy.""";
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      //normal
      bmiStatus = "Normal";
      bmiColor = wTPrimaryColor;
      bmiDescription =
          """Your BMI is ${bmi.toStringAsFixed(1)}, which is normal. 
Congrats! You’re the middle child of BMI nobody talks about you, but you exist.""";
    } else if (bmi >= 25 && bmi <= 29.9) {
      //overweight
      bmiStatus = "Overweight";
      bmiColor = Colors.redAccent;
      bmiDescription = """Your BMI is ${bmi.toStringAsFixed(1)}. 
Not quite obese, but let's just say your chair sighed a little when you sat down.""";
    } else if (bmi >= 30) {
      //obese
      bmiStatus = "Obese";
      bmiColor = Colors.red;
      bmiDescription = """Your BMI is ${bmi.toStringAsFixed(1)}. 
Don’t you think you should be hitting the gym, lil bro? 
Your couch is developing separation anxiety.""";
    }
  }
}
