import 'package:flutter/material.dart';
import 'package:stacked_bmi_app/app/app.locator.dart';
import 'package:stacked_bmi_app/services/theme_service.dart';

final ThemeService themeServie = locator<ThemeService>();

class AppColors {
  static Color get background => themeServie.isDarkMode
      ? const Color(0xFF242424)
      : const Color(0xFFD1D9E6);
  static Color get mainColor => themeServie.isDarkMode
      ? const Color(0xFF373737)
      : const Color(0xFFFFFFFF);
  static Color get primaryColor => themeServie.isDarkMode
      ? const Color(0xFF246AFE)
      : const Color(0xFF246AFE);
  static Color get mainTextColor => themeServie.isDarkMode
      ? const Color(0xFFFFFFFF)
      : const Color(0xFF000000);
  static Color get themeTextColor => themeServie.isDarkMode
      ? const Color(0xFF246AFE)
      : const Color(0xFF246AFE);
  static Color get lightTextColor => themeServie.isDarkMode
      ? const Color(0xFF8C8C8C)
      : const Color(0xFF8C8C8C);
}

const Color wTBackgroundColor = Color(0xFFD1D9E6);
const Color wTPrimaryColor = Color(0xFF246AFE);
const Color wTSecondaryColor = Color(0xFFFFFFFF);

//Text Color
const Color wTPrimaryTextColor = Color(0xFF000000);
const Color wTSecondaryTextColor = Color(0xFFFFFFFF);
const Color wTThemeTextColor = Color(0xFF246AFE);
const Color wTLightTextColor = Color(0xFF8C8C8C);

const Color kcPrimaryColorDark = Color(0xFF300151);
const Color kcDarkGreyColor = Color(0xFF1A1B1E);
const Color kcMediumGrey = Color(0xFF474A54);
const Color kcLightGrey = Color.fromARGB(255, 187, 187, 187);
const Color kcVeryLightGrey = Color(0xFFE3E3E3);
const Color kcBackgroundColor = kcDarkGreyColor;
