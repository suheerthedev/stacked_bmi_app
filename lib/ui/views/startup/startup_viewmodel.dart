import 'package:stacked/stacked.dart';
import 'package:stacked_bmi_app/app/app.locator.dart';
import 'package:stacked_bmi_app/app/app.router.dart';
import 'package:stacked_bmi_app/services/theme_service.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final ThemeService themeService = locator<ThemeService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    themeService.loadTheme();
    await Future.delayed(const Duration(seconds: 3));

    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic

    _navigationService.replaceWithHomeView();
  }
}
