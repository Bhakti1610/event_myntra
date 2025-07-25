import 'package:flutter/material.dart';
import 'colors.dart';

class AppTheme {
  static ColorScheme getColor(BuildContext context) =>
      Theme.of(context).colorScheme;

  static TextTheme getTextStyle(BuildContext context) =>
      Theme.of(context).textTheme;

  static ThemeData lightTheme(BuildContext context) => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.backgroundPrimary,
    primaryColor: AppColors.primary,
    splashColor: AppColors.eventCyan,
    dividerColor: AppColors.textfieldBorder,
    appBarTheme: const AppBarTheme(
      surfaceTintColor: Colors.transparent,
      backgroundColor: AppColors.backgroundPrimary,
      foregroundColor: AppColors.dark,
      elevation: 0,
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.white,
      background: AppColors.backgroundPrimary,
      error: AppColors.danger,
      onPrimary: AppColors.white,
      onSecondary: AppColors.white,
      onSurface: AppColors.dark,
      onBackground: AppColors.dark,
      onError: AppColors.white,
      outline: AppColors.textfieldBorder,
      tertiary: AppColors.eventCyan,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.textSecondary),
      bodyMedium: TextStyle(color: AppColors.textSecondary),
      bodySmall: TextStyle(color: AppColors.textGray),
      titleLarge: TextStyle(color: AppColors.primary),
      titleMedium: TextStyle(color: AppColors.secondary),
    ),
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.black,
    primaryColor: AppColors.primary,
    splashColor: AppColors.eventCyan,
    dividerColor: AppColors.muted,
    appBarTheme: const AppBarTheme(
      surfaceTintColor: Colors.transparent,
      backgroundColor: AppColors.black,
      foregroundColor: AppColors.white,
      elevation: 0,
    ),
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.dark,
      background: AppColors.black,
      error: AppColors.danger,
      onPrimary: AppColors.white,
      onSecondary: AppColors.white,
      onSurface: AppColors.white,
      onBackground: AppColors.white,
      onError: AppColors.black,
      outline: AppColors.muted,
      tertiary: AppColors.eventCyan,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.textPrimary),
      bodyMedium: TextStyle(color: AppColors.textPrimary),
      bodySmall: TextStyle(color: AppColors.textGray),
      titleLarge: TextStyle(color: AppColors.eventCyan),
      titleMedium: TextStyle(color: AppColors.secondary),
    ),
  );
}
