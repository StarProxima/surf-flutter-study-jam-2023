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
      extensions: [
        colors,
      ],
    );
  }
}
