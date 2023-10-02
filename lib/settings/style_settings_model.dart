import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'style_settings_model.mapper.dart';

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

@MappableClass()
class StyleSettingsModel with StyleSettingsModelMappable {
  final ColorSchemeModelName colorSchemeName;
  final ColorSchemeModel customColorScheme;
  final TextThemeModelName textThemeName;
  final List<int> textColors;
  final List<int> highlightColors;

  static final fromMap = StyleSettingsModelMapper.fromMap;
  static final fromJson = StyleSettingsModelMapper.fromJson;

  const StyleSettingsModel({
    this.colorSchemeName = ColorSchemeModelName.blue,
    this.customColorScheme = ColorSchemeModel.blue,
    this.textThemeName = TextThemeModelName.poppins,
    this.textColors = _textColors,
    this.highlightColors = _highlightColors,
  });

  ColorSchemeModel get colorScheme => ColorSchemeModel.fromName(colorSchemeName, customColorScheme);
  TextThemeModel get textTheme => TextThemeModel.fromName(textThemeName);
}
