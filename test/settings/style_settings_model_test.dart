import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('StyleSettingsModel', () {
    test('creates a default set of style settings', () {
      StyleSettingsModel style = StyleSettingsModel();

      expect(style.colorSchemeName, ColorSchemeModelName.blue);
      expect(style.customColorScheme, ColorSchemeModel.blue);
      expect(style.textThemeName, TextThemeModelName.poppins);
    });

    test('parses to and from json', () {
      StyleSettingsModel style = StyleSettingsModel(
        colorSchemeName: ColorSchemeModelName.green,
        customColorScheme: ColorSchemeModel.dark,
        textThemeName: TextThemeModelName.roboto,
      );

      String json = style.toJson();
      StyleSettingsModel parsed = StyleSettingsModel.fromJson(json);

      expect(style, parsed);
    });

    test('parses to and from map', () {
      StyleSettingsModel style = StyleSettingsModel(
        colorSchemeName: ColorSchemeModelName.green,
        customColorScheme: ColorSchemeModel.dark,
        textThemeName: TextThemeModelName.roboto,
      );

      Map<String, dynamic> map = style.toMap();
      StyleSettingsModel parsed = StyleSettingsModel.fromMap(map);

      expect(style, parsed);
    });

    test('fetches current color scheme', () {
      StyleSettingsModel blue = StyleSettingsModel();
      expect(blue.colorScheme, ColorSchemeModel.blue);

      StyleSettingsModel green = StyleSettingsModel(colorSchemeName: ColorSchemeModelName.green);
      expect(green.colorScheme, ColorSchemeModel.green);

      StyleSettingsModel dark = StyleSettingsModel(colorSchemeName: ColorSchemeModelName.dark);
      expect(dark.colorScheme, ColorSchemeModel.dark);

      StyleSettingsModel oled = StyleSettingsModel(colorSchemeName: ColorSchemeModelName.oled);
      expect(oled.colorScheme, ColorSchemeModel.oled);

      StyleSettingsModel light = StyleSettingsModel(colorSchemeName: ColorSchemeModelName.light);
      expect(light.colorScheme, ColorSchemeModel.light);

      StyleSettingsModel custom = StyleSettingsModel(colorSchemeName: ColorSchemeModelName.custom);
      expect(custom.colorScheme, ColorSchemeModel.blue);
    });

    test('fetches current text theme', () {
      StyleSettingsModel poppins = StyleSettingsModel();
      expect(poppins.textTheme, TextThemeModel.poppins);

      StyleSettingsModel roboto = StyleSettingsModel(textThemeName: TextThemeModelName.roboto);
      expect(roboto.textTheme, TextThemeModel.roboto);

      StyleSettingsModel lora = StyleSettingsModel(textThemeName: TextThemeModelName.lora);
      expect(lora.textTheme, TextThemeModel.lora);

      StyleSettingsModel vollkorn = StyleSettingsModel(textThemeName: TextThemeModelName.vollkorn);
      expect(vollkorn.textTheme, TextThemeModel.vollkorn);
    });
  });
}
