import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('TextThemeModel', () {
    test('parses to and from json', () {
      TextThemeModel theme = TextThemeModel.poppins;
      String json = theme.toJson();
      TextThemeModel parsed = TextThemeModel.fromJson(json);

      expect(theme, parsed);
    });

    test('parses to and from map', () {
      TextThemeModel theme = TextThemeModel.lora;
      Map<String, dynamic> map = theme.toMap();
      TextThemeModel parsed = TextThemeModel.fromMap(map);

      expect(theme, parsed);
    });

    test('gets from name', () {
      expect(
        TextThemeModel.fromName(TextThemeModelName.poppins),
        TextThemeModel.poppins,
      );

      expect(
        TextThemeModel.fromName(TextThemeModelName.roboto),
        TextThemeModel.roboto,
      );

      expect(
        TextThemeModel.fromName(TextThemeModelName.lora),
        TextThemeModel.lora,
      );

      expect(
        TextThemeModel.fromName(TextThemeModelName.vollkorn),
        TextThemeModel.vollkorn,
      );
    });
  });
}
