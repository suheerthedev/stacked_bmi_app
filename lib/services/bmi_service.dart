import 'package:stacked/stacked.dart';

class BmiService with ListenableServiceMixin {
  double mainBmi = 0.0;

  void updateBmi(double bmi) {
    mainBmi = bmi;
    notifyListeners();
  }
}
