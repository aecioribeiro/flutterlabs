import 'package:flutter/material.dart';
import 'package:flutterlabs/src/theme/app_colors.dart';

class AppLabels {
  static TextStyle textButton = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: AppColors.gradientEnd
  );

  static TextStyle bodyLarge = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.bodyTextColor
  );
  
  static TextStyle bodyMedium = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.bodyTextColor
  );

  static TextStyle bodySmall = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: AppColors.mainColor
  );

  static TextStyle primaryLinkLabel = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.linkColor
  );

  static TextStyle secondaryLinkLabel = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: AppColors.linkColor
  );

  static TextStyle displayMedium = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.bodyTextColor
  );

  static TextStyle displayThin = const TextStyle(
    fontSize: 14,
    fontFamily: "Montserrat Thin",
    fontWeight: FontWeight.w600,
    color: AppColors.titleTextColor
  );

  static TextStyle displaySmall = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: AppColors.bodyTextColor
  );

  static TextStyle titleLarge = const TextStyle(
    fontSize: 27,
    fontWeight: FontWeight.w600,
    color: AppColors.titleTextColor
  );

  static TextStyle displayLarge = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: AppColors.titleTextColor
  );

  static TextStyle secondaryTitle = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: AppColors.titleTextColor
  );

  static TextStyle dropdownLabel = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.white
  );

  static TextStyle secondaryButtonLabel = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.black
  );

  static TextStyle fadedTextLabel = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.fadedTextColor
  );

  static TextStyle defaultLinkLabel = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
    color: AppColors.bodyTextColor
  );

  static TextStyle tabSelectedLabel = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: Colors.white
  );

  static TextStyle tabUnselectedLabel = const TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    color: AppColors.fadedTabColor
  );

  static TextStyle searchHintLabel = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: AppColors.fadedTabColor
  );
}