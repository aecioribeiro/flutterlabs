import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterlabs/src/theme/app_colors.dart';
import 'package:flutterlabs/src/theme/app_labels.dart';

class AppTheme {
  static ThemeData get main => ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.mainColor,
      surface: AppColors.background,
      primary: AppColors.primary,
      brightness: Brightness.dark,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkBackground
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
      type: BottomNavigationBarType.shifting,
      selectedItemColor: AppColors.titleTextColor,
      unselectedItemColor: Colors.white,
      showUnselectedLabels: true,
      selectedIconTheme: const IconThemeData(
        color: AppColors.mainColor,
      ),
      unselectedIconTheme: const IconThemeData(
        color: Colors.black,
      ),
      selectedLabelStyle: AppLabels.tabSelectedLabel,
      unselectedLabelStyle: AppLabels.tabUnselectedLabel
    ),
    fontFamily: 'Montserrat',
    useMaterial3: true,
    textTheme: AppTheme.textTheme
  );

  static TextTheme get textTheme => TextTheme(
    bodyLarge: AppLabels.bodyLarge,
    bodyMedium: AppLabels.bodyMedium,
    bodySmall: AppLabels.bodySmall,
    labelLarge: AppLabels.bodyLarge,
    labelMedium: AppLabels.bodyMedium,
    labelSmall: AppLabels.bodySmall,
    titleLarge: AppLabels.titleLarge,
    displayLarge: AppLabels.bodyLarge,
    displayMedium: AppLabels.bodyMedium,
    displaySmall: AppLabels.bodySmall,
  );

  static CupertinoTextThemeData get cupertinoTextTheme => CupertinoTextThemeData(
    actionSmallTextStyle: AppLabels.bodySmall
  );

  static CupertinoThemeData get cupertinoMain => CupertinoThemeData(
    textTheme: AppTheme.cupertinoTextTheme,
    primaryColor: AppColors.mainColor,
    brightness: Brightness.dark,
    primaryContrastingColor: AppColors.fadedTextColor,
    scaffoldBackgroundColor: AppColors.background
  );
}