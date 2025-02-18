import 'package:flutter/material.dart';
import 'colors.dart';

/// How to use:
///
/// ```dart
/// class MyApp extends StatelessWidget {
///   @override
///   Widget build(BuildContext context) {
///     return MaterialApp(
///       theme: AppTheme.lightTheme,
///       home: MyHomePage(),
///     );
///   }
/// }
/// ```
class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.primary,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.accent,
      ),
      scaffoldBackgroundColor: AppColors.background,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            color: AppColors.textPrimary,
            fontSize: 32,
            fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(color: AppColors.textSecondary, fontSize: 16),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: AppColors.button,
        textTheme: ButtonTextTheme.primary,
      ),
      appBarTheme: const AppBarTheme(
        color: AppColors.appBar,
        titleTextStyle: TextStyle(color: AppColors.textPrimary, fontSize: 20),
      ),
    );
  }
}
