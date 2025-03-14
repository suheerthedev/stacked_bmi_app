import 'package:flutter/material.dart';
import 'package:stacked_bmi_app/app/app.bottomsheets.dart';
import 'package:stacked_bmi_app/app/app.dialogs.dart';
import 'package:stacked_bmi_app/app/app.locator.dart';
import 'package:stacked_bmi_app/app/app.router.dart';
import 'package:stacked_bmi_app/ui/common/app_colors.dart';
import 'package:stacked_services/stacked_services.dart';

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
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
      theme: ThemeData(
        brightness:
            themeService.isDarkMode ? Brightness.dark : Brightness.light,
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.background,
      ),
    );
  }
}
