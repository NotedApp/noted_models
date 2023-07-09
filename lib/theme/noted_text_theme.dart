import 'package:dart_mappable/dart_mappable.dart';

part 'noted_text_theme.mapper.dart';

/// A model for a text theme. The model specifies a [String] font family name.
@MappableClass()
class NotedTextTheme with NotedTextThemeMappable {
  final String fontFamily;

  static final fromMap = NotedTextThemeMapper.fromMap;
  static final fromJson = NotedTextThemeMapper.fromJson;

  const NotedTextTheme({
    required this.fontFamily,
  });

  static const NotedTextTheme poppins = NotedTextTheme(fontFamily: 'Poppins');

  static const NotedTextTheme roboto = NotedTextTheme(fontFamily: 'Roboto');

  static const NotedTextTheme lora = NotedTextTheme(fontFamily: 'Lora');

  static const NotedTextTheme vollkorn = NotedTextTheme(fontFamily: 'Vollkorn');
}
