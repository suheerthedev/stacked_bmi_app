import 'package:stacked/stacked.dart';

class ThemeService with ListenableServiceMixin {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  ThemeService() {
    loadTheme();
  }

  Future<void> loadTheme() async {
    notifyListeners();
  }

  Future<void> toggleTheme() async {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}
