import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'noted_style_settings.mapper.dart';

const List<int> _textColors = [
  0xFFFFFFFF,
  0xFF000000,
  0xFF757575,
  0xFFF44336,
  0xFF9C27B0,
  0xFF3F51B5,
  0xFF03A9F4,
  0xFF009688,
  0xFF8BC34A,
  0xFFFFEB3B,
  0xFFFF9800,
];

const List<int> _highlightColors = [
  0xFFBDBDBD,
  0xFFB0BEC5,
  0xFFEF9A9A,
  0xFFCE93D8,
  0xFF9FA8DA,
  0xFF81D4FA,
  0xFF80CBC4,
  0xFFC5E1A5,
  0xFFFFF59D,
  0xFFFFCC80,
  0xFFBCAAA4,
];

/// A set of settings for a user's application style.
@MappableClass()
class NotedStyleSettings with NotedStyleSettingsMappable {
  final NotedColorSchemeName colorSchemeName;
  final NotedColorScheme customColorScheme;
  final NotedTextThemeName textThemeName;
  final List<int> textColors;
  final List<int> highlightColors;

  static final fromMap = NotedStyleSettingsMapper.fromMap;
  static final fromJson = NotedStyleSettingsMapper.fromJson;

  const NotedStyleSettings({
    this.colorSchemeName = NotedColorSchemeName.blue,
    this.customColorScheme = NotedColorScheme.blue,
    this.textThemeName = NotedTextThemeName.poppins,
    this.textColors = _textColors,
    this.highlightColors = _highlightColors,
  });

  NotedColorScheme get colorScheme => switch (colorSchemeName) {
        NotedColorSchemeName.blue => NotedColorScheme.blue,
        NotedColorSchemeName.green => NotedColorScheme.green,
        NotedColorSchemeName.dark => NotedColorScheme.dark,
        NotedColorSchemeName.oled => NotedColorScheme.oled,
        NotedColorSchemeName.light => NotedColorScheme.light,
        NotedColorSchemeName.custom => customColorScheme,
      };
}
