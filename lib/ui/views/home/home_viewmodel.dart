import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  double heightValue = 170.0;

  onHeightChanged(double value) {
    heightValue = value;
    rebuildUi();
  }

  int get ageCounter => _ageCounter;
  int get weightCounter => _weightCounter;

  int _ageCounter = 20;
  int _weightCounter = 65;

  bool isMale = false;
  bool isFemale = false;

  void maleSelection() {
    isMale = !isMale;
    isFemale = false;
    rebuildUi();
  }

  void femaleSelection() {
    isFemale = !isFemale;
    isMale = false;
    rebuildUi();
  }

  void incrementAgeCounter() {
    _ageCounter++;
    rebuildUi();
  }

  void decrementAgeCounter() {
    if (_ageCounter < 0) {
      _ageCounter = 0;
    } else {
      _ageCounter--;
      rebuildUi();
    }
  }

  void incrementWeightCounter() {
    _weightCounter++;
    rebuildUi();
  }

  void decrementWeightCounter() {
    if (_weightCounter < 0) {
      _weightCounter = 0;
    } else {
      _weightCounter--;
      rebuildUi();
    }
  }
}
