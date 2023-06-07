// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element

part of 'app_colors.dart';

// **************************************************************************
// ThemeTailorGenerator
// **************************************************************************

class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.background,
    required this.error,
    required this.primary,
    required this.text,
    required this.transperent,
    required this.white,
  });

  final Color background;
  final Color error;
  final Color primary;
  final Color text;
  final Color transperent;
  final Color white;

  static final AppColors light = AppColors(
    background: _$AppColors.background[0],
    error: _$AppColors.error[0],
    primary: _$AppColors.primary[0],
    text: _$AppColors.text[0],
    transperent: _$AppColors.transperent[0],
    white: _$AppColors.white[0],
  );

  static final themes = [
    light,
  ];

  @override
  AppColors copyWith({
    Color? background,
    Color? error,
    Color? primary,
    Color? text,
    Color? transperent,
    Color? white,
  }) {
    return AppColors(
      background: background ?? this.background,
      error: error ?? this.error,
      primary: primary ?? this.primary,
      text: text ?? this.text,
      transperent: transperent ?? this.transperent,
      white: white ?? this.white,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      background: Color.lerp(background, other.background, t)!,
      error: Color.lerp(error, other.error, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      text: Color.lerp(text, other.text, t)!,
      transperent: Color.lerp(transperent, other.transperent, t)!,
      white: Color.lerp(white, other.white, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppColors &&
            const DeepCollectionEquality()
                .equals(background, other.background) &&
            const DeepCollectionEquality().equals(error, other.error) &&
            const DeepCollectionEquality().equals(primary, other.primary) &&
            const DeepCollectionEquality().equals(text, other.text) &&
            const DeepCollectionEquality()
                .equals(transperent, other.transperent) &&
            const DeepCollectionEquality().equals(white, other.white));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(background),
        const DeepCollectionEquality().hash(error),
        const DeepCollectionEquality().hash(primary),
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(transperent),
        const DeepCollectionEquality().hash(white));
  }
}
