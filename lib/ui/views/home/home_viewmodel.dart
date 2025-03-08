import 'package:stacked/stacked.dart';
import 'package:stacked_bmi_app/app/app.dialogs.dart';
import 'package:stacked_bmi_app/app/app.locator.dart';
import 'package:stacked_bmi_app/app/app.router.dart';
import 'package:stacked_bmi_app/services/bmi_service.dart';
import 'package:stacked_bmi_app/services/theme_service.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final DialogService dialogService = locator<DialogService>();
  final NavigationService navigationService = locator<NavigationService>();
  final BmiService bmiService = locator<BmiService>();
  final ThemeService themeService = locator<ThemeService>();

  double height = 170.0;

  bool isDark = false;

  onHeightChanged(double value) {
    height = value;
    rebuildUi();
  }

  int get ageCounter => _age;
  int get weightCounter => _weight;

  int _age = 20;
  int _weight = 65;

  bool isMale = false;
  bool isFemale = false;

  void maleSelection() {
    if (isMale == false) {
      isMale = !isMale;
      isFemale = false;
    }
    rebuildUi();
  }

  void femaleSelection() {
    if (isFemale == false) {
      isFemale = !isFemale;
      isMale = false;
    }
    rebuildUi();
  }

  void incrementAgeCounter() {
    _age++;
    rebuildUi();
  }

  void decrementAgeCounter() {
    if (_age < 0) {
      _age = 0;
    } else {
      _age--;
      rebuildUi();
    }
  }

  void incrementWeightCounter() {
    _weight++;
    rebuildUi();
  }

  void decrementWeightCounter() {
    if (_weight < 0) {
      _weight = 0;
    } else {
      _weight--;
      rebuildUi();
    }
  }

  void calculateBMI() {
    if (isMale == false && isFemale == false) {
      dialogService.showCustomDialog(
          variant: DialogType.infoAlert,
          title: "Gender Not Selected :(",
          description: "Please select gender before continuing.");
    } else {
      double heightInMeter = height * 0.01;
      double bmi = _weight / (heightInMeter * heightInMeter);
      navigationService.navigateToResultView(bmi: bmi);
      bmiService.updateBmi(bmi);
    }
  }

  void toggleScreenMode() {
    isDark = !isDark;
    themeService.toggleTheme();
    rebuildUi();
  }
}
