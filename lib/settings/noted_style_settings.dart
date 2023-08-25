import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'noted_style_settings.mapper.dart';

/// A set of settings for a user's application style.
@MappableClass()
class NotedStyleSettings with NotedStyleSettingsMappable {
  final NotedColorSchemeName colorSchemeName;
  final NotedColorScheme customColorScheme;
  final NotedTextThemeName textThemeName;

  static final fromMap = NotedStyleSettingsMapper.fromMap;
  static final fromJson = NotedStyleSettingsMapper.fromJson;

  const NotedStyleSettings({
    this.colorSchemeName = NotedColorSchemeName.blue,
    this.customColorScheme = NotedColorScheme.blue,
    this.textThemeName = NotedTextThemeName.poppins,
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
