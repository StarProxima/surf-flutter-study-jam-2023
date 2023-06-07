import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_colors.tailor.dart';

@Tailor(
  themes: ['light'],
  themeGetter: ThemeGetter.none,
)
class _$AppColors {
  static List<Color> primary = [Colors.deepPurple];
  static List<Color> error = [const Color(0xFFba1a1a)];
  static List<Color> text = [const Color(0xFF807b84)];
  static List<Color> background = [const Color(0xFFFFFFFF)];
  static List<Color> transperent = [const Color(0x00000000)];
  static List<Color> white = [const Color(0xFFFFFFFF)];
}
