import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('NotedColorScheme', () {
    test('parses to and from json', () {
      ColorSchemeModel scheme = ColorSchemeModel.blue;
      String json = scheme.toJson();
      ColorSchemeModel parsed = ColorSchemeModel.fromJson(json);

      expect(scheme, parsed);
    });

    test('parses to and from map', () {
      ColorSchemeModel scheme = ColorSchemeModel.green;
      Map<String, dynamic> map = scheme.toMap();
      ColorSchemeModel parsed = ColorSchemeModel.fromMap(map);

      expect(scheme, parsed);
    });

    test('gets from name', () {
      expect(
        ColorSchemeModel.fromName(ColorSchemeModelName.blue, ColorSchemeModel.green),
        ColorSchemeModel.blue,
      );

      expect(
        ColorSchemeModel.fromName(ColorSchemeModelName.green, ColorSchemeModel.blue),
        ColorSchemeModel.green,
      );

      expect(
        ColorSchemeModel.fromName(ColorSchemeModelName.dark, ColorSchemeModel.blue),
        ColorSchemeModel.dark,
      );

      expect(
        ColorSchemeModel.fromName(ColorSchemeModelName.oled, ColorSchemeModel.blue),
        ColorSchemeModel.oled,
      );

      expect(
        ColorSchemeModel.fromName(ColorSchemeModelName.light, ColorSchemeModel.blue),
        ColorSchemeModel.light,
      );

      expect(
        ColorSchemeModel.fromName(ColorSchemeModelName.custom, ColorSchemeModel.blue),
        ColorSchemeModel.blue,
      );
    });
  });
}
