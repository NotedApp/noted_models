import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('NotedStyleSettings', () {
    test('creates a default set of style settings', () {
      NotedStyleSettings style = NotedStyleSettings();

      expect(style.colorSchemeName, ColorSchemeModelName.blue);
      expect(style.customColorScheme, ColorSchemeModel.blue);
      expect(style.textThemeName, TextThemeModelName.poppins);
    });

    test('parses to and from json', () {
      NotedStyleSettings style = NotedStyleSettings(
        colorSchemeName: ColorSchemeModelName.green,
        customColorScheme: ColorSchemeModel.dark,
        textThemeName: TextThemeModelName.roboto,
      );

      String json = style.toJson();
      NotedStyleSettings parsed = NotedStyleSettings.fromJson(json);

      expect(style, parsed);
    });

    test('parses to and from map', () {
      NotedStyleSettings style = NotedStyleSettings(
        colorSchemeName: ColorSchemeModelName.green,
        customColorScheme: ColorSchemeModel.dark,
        textThemeName: TextThemeModelName.roboto,
      );

      Map<String, dynamic> map = style.toMap();
      NotedStyleSettings parsed = NotedStyleSettings.fromMap(map);

      expect(style, parsed);
    });

    test('fetches current color scheme', () {
      NotedStyleSettings blue = NotedStyleSettings();
      expect(blue.colorScheme, ColorSchemeModel.blue);

      NotedStyleSettings green = NotedStyleSettings(colorSchemeName: ColorSchemeModelName.green);
      expect(green.colorScheme, ColorSchemeModel.green);

      NotedStyleSettings dark = NotedStyleSettings(colorSchemeName: ColorSchemeModelName.dark);
      expect(dark.colorScheme, ColorSchemeModel.dark);

      NotedStyleSettings oled = NotedStyleSettings(colorSchemeName: ColorSchemeModelName.oled);
      expect(oled.colorScheme, ColorSchemeModel.oled);

      NotedStyleSettings light = NotedStyleSettings(colorSchemeName: ColorSchemeModelName.light);
      expect(light.colorScheme, ColorSchemeModel.light);

      NotedStyleSettings custom = NotedStyleSettings(colorSchemeName: ColorSchemeModelName.custom);
      expect(custom.colorScheme, ColorSchemeModel.blue);
    });

    test('fetches current text theme', () {
      NotedStyleSettings poppins = NotedStyleSettings();
      expect(poppins.textTheme, TextThemeModel.poppins);

      NotedStyleSettings roboto = NotedStyleSettings(textThemeName: TextThemeModelName.roboto);
      expect(roboto.textTheme, TextThemeModel.roboto);

      NotedStyleSettings lora = NotedStyleSettings(textThemeName: TextThemeModelName.lora);
      expect(lora.textTheme, TextThemeModel.lora);

      NotedStyleSettings vollkorn = NotedStyleSettings(textThemeName: TextThemeModelName.vollkorn);
      expect(vollkorn.textTheme, TextThemeModel.vollkorn);
    });
  });
}
