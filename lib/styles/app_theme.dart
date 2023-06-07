import 'package:flutter/material.dart';

import 'package:surf_flutter_study_jam_2023/styles/app_colors/app_colors.dart';

class AppTheme {
  static ThemeData themeByStyles({
    required AppColors colors,
  }) {
    final theme = ThemeData.light();
    return theme.copyWith(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      primaryColor: colors.primary,
      scaffoldBackgroundColor: colors.background,
      appBarTheme: theme.appBarTheme.copyWith(
        backgroundColor: colors.background,
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: colors.primary,
            width: 2,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: colors.text,
            width: 1.5,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: colors.error,
            width: 2,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: colors.error,
            width: 1.5,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
      ),
      extensions: [
        colors,
      ],
    );
  }
}
