import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('StyleSettingsModel', () {
    test('creates a default set of style settings', () {
      StyleSettingsModel style = const StyleSettingsModel();

      expect(style.colorSchemeName, ColorSchemeModelName.blue);
      expect(style.customColorScheme, ColorSchemeModel.blue);
      expect(style.textThemeName, TextThemeModelName.poppins);
    });

    test('parses to and from json', () {
      StyleSettingsModel style = const StyleSettingsModel(
        colorSchemeName: ColorSchemeModelName.green,
        customColorScheme: ColorSchemeModel.dark,
        textThemeName: TextThemeModelName.roboto,
      );

      String json = style.toJson();
      StyleSettingsModel parsed = StyleSettingsModel.fromJson(json);

      expect(style, parsed);
    });

    test('parses to and from map', () {
      StyleSettingsModel style = const StyleSettingsModel(
        colorSchemeName: ColorSchemeModelName.green,
        customColorScheme: ColorSchemeModel.dark,
        textThemeName: TextThemeModelName.roboto,
      );

      Map<String, dynamic> map = style.toMap();
      StyleSettingsModel parsed = StyleSettingsModel.fromMap(map);

      expect(style, parsed);
    });

    test('fetches current color scheme', () {
      StyleSettingsModel blue = const StyleSettingsModel();
      expect(blue.colorScheme, ColorSchemeModel.blue);

      StyleSettingsModel green = const StyleSettingsModel(colorSchemeName: ColorSchemeModelName.green);
      expect(green.colorScheme, ColorSchemeModel.green);

      StyleSettingsModel dark = const StyleSettingsModel(colorSchemeName: ColorSchemeModelName.dark);
      expect(dark.colorScheme, ColorSchemeModel.dark);

      StyleSettingsModel oled = const StyleSettingsModel(colorSchemeName: ColorSchemeModelName.oled);
      expect(oled.colorScheme, ColorSchemeModel.oled);

      StyleSettingsModel light = const StyleSettingsModel(colorSchemeName: ColorSchemeModelName.light);
      expect(light.colorScheme, ColorSchemeModel.light);

      StyleSettingsModel custom = const StyleSettingsModel(colorSchemeName: ColorSchemeModelName.custom);
      expect(custom.colorScheme, ColorSchemeModel.blue);
    });

    test('fetches current text theme', () {
      StyleSettingsModel poppins = const StyleSettingsModel();
      expect(poppins.textTheme, TextThemeModel.poppins);

      StyleSettingsModel roboto = const StyleSettingsModel(textThemeName: TextThemeModelName.roboto);
      expect(roboto.textTheme, TextThemeModel.roboto);

      StyleSettingsModel lora = const StyleSettingsModel(textThemeName: TextThemeModelName.lora);
      expect(lora.textTheme, TextThemeModel.lora);

      StyleSettingsModel vollkorn = const StyleSettingsModel(textThemeName: TextThemeModelName.vollkorn);
      expect(vollkorn.textTheme, TextThemeModel.vollkorn);
    });
  });
}
