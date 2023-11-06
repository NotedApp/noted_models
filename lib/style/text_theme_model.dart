import 'package:dart_mappable/dart_mappable.dart';

part 'text_theme_model.mapper.dart';

@MappableEnum()
enum TextThemeModelName {
  poppins,
  roboto,
  lora,
  vollkorn,
}

@MappableClass()
class TextThemeModel with TextThemeModelMappable {
  final String fontFamily;

  static final fromMap = TextThemeModelMapper.fromMap;
  static final fromJson = TextThemeModelMapper.fromJson;

  const TextThemeModel({
    required this.fontFamily,
  });

  factory TextThemeModel.fromName(TextThemeModelName name) {
    return switch (name) {
      TextThemeModelName.poppins => TextThemeModel.poppins,
      TextThemeModelName.roboto => TextThemeModel.roboto,
      TextThemeModelName.lora => TextThemeModel.lora,
      TextThemeModelName.vollkorn => TextThemeModel.vollkorn,
    };
  }

  static const TextThemeModel poppins = TextThemeModel(fontFamily: 'Poppins');

  static const TextThemeModel roboto = TextThemeModel(fontFamily: 'Roboto');

  static const TextThemeModel lora = TextThemeModel(fontFamily: 'Lora');

  static const TextThemeModel vollkorn = TextThemeModel(fontFamily: 'Vollkorn');
}
