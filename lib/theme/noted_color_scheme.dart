import 'package:freezed_annotation/freezed_annotation.dart';

part 'noted_color_scheme.freezed.dart';
part 'noted_color_scheme.g.dart';

/// A model for a color scheme. The model has a [NotedBrightness] to specify its brightness, and a set of [int]s to
/// specify its different colors.
@freezed
class NotedColorScheme with _$NotedColorScheme {
  const factory NotedColorScheme({
    required NotedBrightness brightness,
    required int primary,
    required int onPrimary,
    required int secondary,
    required int onSecondary,
    required int tertiary,
    required int onTertiary,
    required int error,
    required int onError,
    required int surface,
    required int onSurface,
    required int background,
    required int onBackground,
  }) = _NotedColorScheme;

  factory NotedColorScheme.fromJson(Map<String, Object?> json) => _$NotedColorSchemeFromJson(json);

  static const NotedColorScheme blue = NotedColorScheme(
    brightness: NotedBrightness.light,
    primary: 0xFF8DA5A5,
    onPrimary: 0xFF111111,
    secondary: 0xFFAFC0C0,
    onSecondary: 0xFF111111,
    tertiary: 0xFF2A324B,
    onTertiary: 0xFFE5E3C9,
    error: 0xFFB33951,
    onError: 0xFFEEEEEE,
    background: 0xFFE5E3C9,
    onBackground: 0xFF111111,
    surface: 0xFFE5E3C9,
    onSurface: 0xFF111111,
  );

  static const NotedColorScheme green = NotedColorScheme(
    brightness: NotedBrightness.light,
    primary: 0xFF90A578,
    onPrimary: 0xFF111111,
    secondary: 0xFFAEBE9D,
    onSecondary: 0xFF111111,
    tertiary: 0xFF526241,
    onTertiary: 0xFFE5E3C9,
    error: 0xFFB33951,
    onError: 0xFFEEEEEE,
    background: 0xFFE5E3C9,
    onBackground: 0xFF111111,
    surface: 0xFFE5E3C9,
    onSurface: 0xFF111111,
  );

  static const NotedColorScheme dark = NotedColorScheme(
    brightness: NotedBrightness.dark,
    primary: 0xFF789395,
    onPrimary: 0xFF111111,
    secondary: 0xFF495883,
    onSecondary: 0xFFEEEEEE,
    tertiary: 0xFF98ADAE,
    onTertiary: 0xFF111111,
    error: 0xFFB33951,
    onError: 0xFFEEEEEE,
    background: 0xFF121212,
    onBackground: 0xFFEEEEEE,
    surface: 0xFF121212,
    onSurface: 0xFFEEEEEE,
  );

  static const NotedColorScheme oledColorScheme = NotedColorScheme(
    brightness: NotedBrightness.dark,
    primary: 0xFF789395,
    onPrimary: 0xFF000000,
    secondary: 0xFF495883,
    onSecondary: 0xFFEEEEEE,
    tertiary: 0xFF98ADAE,
    onTertiary: 0xFF000000,
    error: 0xFFB33951,
    onError: 0xFFEEEEEE,
    background: 0xFF000000,
    onBackground: 0xFFEEEEEE,
    surface: 0xFF000000,
    onSurface: 0xFFEEEEEE,
  );

  static const NotedColorScheme lightColorScheme = NotedColorScheme(
    brightness: NotedBrightness.light,
    primary: 0xFF90A578,
    onPrimary: 0xFF111111,
    secondary: 0xFFAEBE9D,
    onSecondary: 0xFF111111,
    tertiary: 0xFF526241,
    onTertiary: 0xFFEEEEEE,
    error: 0xFFB33951,
    onError: 0xFFEEEEEE,
    background: 0xFFFFFFFF,
    onBackground: 0xFF111111,
    surface: 0xFFFFFFFF,
    onSurface: 0xFF111111,
  );
}

enum NotedBrightness {
  dark,
  light,
}
