// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ColorSet {
  late Color active;
  late Color text;
  late Color inactiveText;
  late Color green;
  late Color yellow;
  late Color primaryBg;
  late Color listCellBG;
  late Color secondaryBG;
  late Color dividerColor;
  late Color backgroundGray;
}

class LightThemeColors extends ColorSet {
  LightThemeColors() {
    active = const Color(0xFF438AF9);
    text = const Color(0xFF2F385E);
    yellow = const Color(0xFFFCC419);
    inactiveText = const Color(0xFFADB5BD);
    green = const Color(0xFF84B7A6);
    primaryBg = const Color(0xFFF5F5FA);
    secondaryBG = const Color(0xFFFFFFFF);
    listCellBG = const Color(0xFFE7E7E7);
    dividerColor = const Color(0xFFF3F4F6);
    backgroundGray = const Color(0xE4F3F4F6);
  }
}

class DarkThemeColors extends ColorSet {
  DarkThemeColors() {
    active = const Color(0xFF1F62F1);
    text = const Color(0xFFFFFFFF);
    inactiveText = const Color(0xFF7D8696);
    yellow = const Color(0xFFFCC419);
    green = const Color(0xFF089C6F);
    primaryBg = const Color(0xFF212630);
    secondaryBG = const Color(0xFF41444F);
    listCellBG = const Color(0xFF212630);
    dividerColor = const Color(0xFF1A1E25);
    backgroundGray = const Color(0xFF282E3A);
  }
}

final LightColors = LightThemeColors();
final DarkColors = DarkThemeColors();

late ColorSet AppColors;

// Светлая тема
final LIGHT_THEME = ThemeData(
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
          color: LightColors.text, fontSize: 20, fontWeight: FontWeight.w500),
      toolbarTextStyle: TextStyle(
          color: LightColors.text, fontSize: 20, fontWeight: FontWeight.w500),
      foregroundColor: LightColors.text,
      iconTheme: IconThemeData(size: 24, color: LightColors.text),
      color: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.dark),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.primaryBg,
    selectedIconTheme: IconThemeData(
      size: 28,
      color: AppColors.active,
    ),
    selectedItemColor: AppColors.text,
    selectedLabelStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    unselectedIconTheme: IconThemeData(
      size: 28,
      color: AppColors.inactiveText,
    ),
    unselectedItemColor: AppColors.inactiveText,
    unselectedLabelStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  ),
  scaffoldBackgroundColor: LightColors.primaryBg,
  textTheme: TextTheme(
    bodyLarge: TextStyle(
        color: LightColors.text,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.2),
    bodyMedium: TextStyle(
        color: LightColors.text,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.2),
    titleMedium: TextStyle(
        color: LightColors.text,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.2),
    titleSmall: TextStyle(
        color: LightColors.inactiveText,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.2),
    bodySmall: TextStyle(
        color: LightColors.inactiveText,
        fontSize: 12,
        fontWeight: FontWeight.normal,
        height: 1.2),
    titleLarge: TextStyle(
        color: LightColors.text,
        fontSize: 24,
        fontWeight: FontWeight.w500,
        height: 1.2),
    headlineSmall: TextStyle(
        color: LightColors.text,
        fontSize: 36,
        fontWeight: FontWeight.w500,
        height: 1.2),
    headlineMedium: TextStyle(
        color: LightColors.text,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        height: 1.2),
  ),
);

// Темная тема
final DARK_THEME = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    titleTextStyle: TextStyle(
        color: DarkColors.text, fontSize: 20, fontWeight: FontWeight.w500),
    toolbarTextStyle: TextStyle(
        color: DarkColors.text, fontSize: 20, fontWeight: FontWeight.w500),
    iconTheme: IconThemeData(size: 24, color: DarkColors.text),
    color: Colors.transparent,
    foregroundColor: DarkColors.text,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.primaryBg,
    selectedIconTheme: IconThemeData(
      size: 28,
      color: AppColors.active,
    ),
    selectedItemColor: AppColors.text,
    selectedLabelStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    unselectedIconTheme: IconThemeData(
      size: 28,
      color: AppColors.secondaryBG,
    ),
    unselectedItemColor: AppColors.inactiveText,
    unselectedLabelStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  ),
  scaffoldBackgroundColor: DarkColors.primaryBg,
  textTheme: TextTheme(
    bodyLarge: TextStyle(
        color: DarkColors.text,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.2),
    bodyMedium: TextStyle(
        color: DarkColors.text,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.2),
    titleMedium: TextStyle(
        color: DarkColors.text,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.2),
    titleSmall: TextStyle(
        color: DarkColors.inactiveText,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.2),
    bodySmall: TextStyle(
        color: DarkColors.inactiveText,
        fontSize: 12,
        fontWeight: FontWeight.normal,
        height: 1.2),
    titleLarge: TextStyle(
        color: DarkColors.text,
        fontSize: 24,
        fontWeight: FontWeight.w500,
        height: 1.2),
    headlineSmall: TextStyle(
        color: DarkColors.text,
        fontSize: 36,
        fontWeight: FontWeight.w500,
        height: 1.2),
    headlineMedium: TextStyle(
        color: DarkColors.text,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        height: 1.2),
  ),
);
