import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'noted_style_settings.mapper.dart';

/// A set of settings for a user's application style.
@MappableClass()
class NotedStyleSettings with NotedStyleSettingsMappable {
  final NotedColorSchemeName currentColorSchemeName;
  final NotedColorScheme customColorScheme;
  final NotedTextTheme textTheme;

  static final fromMap = NotedStyleSettingsMapper.fromMap;
  static final fromJson = NotedStyleSettingsMapper.fromJson;

  const NotedStyleSettings({
    this.currentColorSchemeName = NotedColorSchemeName.blue,
    this.customColorScheme = NotedColorScheme.blue,
    this.textTheme = NotedTextTheme.poppins,
  });

  NotedColorScheme get currentColorScheme => switch (currentColorSchemeName) {
        NotedColorSchemeName.blue => NotedColorScheme.blue,
        NotedColorSchemeName.green => NotedColorScheme.green,
        NotedColorSchemeName.dark => NotedColorScheme.dark,
        NotedColorSchemeName.oled => NotedColorScheme.oled,
        NotedColorSchemeName.light => NotedColorScheme.light,
        NotedColorSchemeName.custom => customColorScheme,
      };
}
