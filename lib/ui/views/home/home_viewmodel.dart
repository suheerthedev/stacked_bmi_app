import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {

  double heightValue = 170.0;

  onHeightChanged(double value) {
    heightValue = value;
    rebuildUi();
  }

  int get ageCounter => _ageCounter;
  int get weightCounter => _weightCounter;

  int _ageCounter = 0;
  int _weightCounter = 0;

  void incrementAgeCounter() {
    _ageCounter++;
    rebuildUi();
  }
  void decrementAgeCounter() {
    _ageCounter++;
    rebuildUi();
  }

  void incrementWeightCounter() {
    _weightCounter++;
    rebuildUi();
  }
  
  void decrementWeightCounter() {
    _ageCounter++;
    rebuildUi();
  }
}
