import 'package:dart_mappable/dart_mappable.dart';

part 'color_scheme_model.mapper.dart';

@MappableEnum()
enum Brightness {
  dark,
  light,
}

@MappableEnum()
enum ColorSchemeModelName {
  blue,
  green,
  dark,
  oled,
  light,
  custom,
}

@MappableClass()
class ColorSchemeModel with ColorSchemeModelMappable {
  final Brightness brightness;
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

  static final fromMap = ColorSchemeModelMapper.fromMap;
  static final fromJson = ColorSchemeModelMapper.fromJson;

  const ColorSchemeModel({
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

  factory ColorSchemeModel.fromName(ColorSchemeModelName name, ColorSchemeModel custom) {
    return switch (name) {
      ColorSchemeModelName.blue => ColorSchemeModel.blue,
      ColorSchemeModelName.green => ColorSchemeModel.green,
      ColorSchemeModelName.dark => ColorSchemeModel.dark,
      ColorSchemeModelName.oled => ColorSchemeModel.oled,
      ColorSchemeModelName.light => ColorSchemeModel.light,
      ColorSchemeModelName.custom => custom,
    };
  }

  static const ColorSchemeModel blue = ColorSchemeModel(
    brightness: Brightness.light,
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

  static const ColorSchemeModel green = ColorSchemeModel(
    brightness: Brightness.light,
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

  static const ColorSchemeModel dark = ColorSchemeModel(
    brightness: Brightness.dark,
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

  static const ColorSchemeModel oled = ColorSchemeModel(
    brightness: Brightness.dark,
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

  static const ColorSchemeModel light = ColorSchemeModel(
    brightness: Brightness.light,
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
