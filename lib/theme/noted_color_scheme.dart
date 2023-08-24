import 'package:dart_mappable/dart_mappable.dart';

part 'noted_color_scheme.mapper.dart';

@MappableEnum()
enum NotedBrightness {
  dark,
  light,
}

@MappableEnum()
enum NotedColorSchemeName {
  blue,
  green,
  dark,
  oled,
  light,
  custom,
}

/// A model for a color scheme. The model has a [NotedBrightness] to specify its brightness, and a set of [int]s to
/// specify its different colors.
@MappableClass()
class NotedColorScheme with NotedColorSchemeMappable {
  final NotedBrightness brightness;
  final int primary;
  final int onPrimary;
  final int secondary;
  final int onSecondary;
  final int tertiary;
  final int onTertiary;
  final int error;
  final int onError;
  final int surface;
  final int onSurface;
  final int background;
  final int onBackground;

  static final fromMap = NotedColorSchemeMapper.fromMap;
  static final fromJson = NotedColorSchemeMapper.fromJson;

  const NotedColorScheme({
    required this.brightness,
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.tertiary,
    required this.onTertiary,
    required this.error,
    required this.onError,
    required this.surface,
    required this.onSurface,
    required this.background,
    required this.onBackground,
  });

  factory NotedColorScheme.fromName(NotedColorSchemeName name, NotedColorScheme custom) {
    return switch (name) {
      NotedColorSchemeName.blue => NotedColorScheme.blue,
      NotedColorSchemeName.green => NotedColorScheme.green,
      NotedColorSchemeName.dark => NotedColorScheme.dark,
      NotedColorSchemeName.oled => NotedColorScheme.oled,
      NotedColorSchemeName.light => NotedColorScheme.light,
      NotedColorSchemeName.custom => custom,
    };
  }

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

  static const NotedColorScheme oled = NotedColorScheme(
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

  static const NotedColorScheme light = NotedColorScheme(
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
