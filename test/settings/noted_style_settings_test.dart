import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('NotedStyleSettings', () {
    test('creates a default set of style settings', () {
      NotedStyleSettings style = NotedStyleSettings();

      expect(style.colorSchemeName, NotedColorSchemeName.blue);
      expect(style.customColorScheme, NotedColorScheme.blue);
      expect(style.textThemeName, NotedTextThemeName.poppins);
    });

    test('parses to and from json', () {
      NotedStyleSettings style = NotedStyleSettings(
        colorSchemeName: NotedColorSchemeName.green,
        customColorScheme: NotedColorScheme.dark,
        textThemeName: NotedTextThemeName.roboto,
      );

      String json = style.toJson();
      NotedStyleSettings parsed = NotedStyleSettings.fromJson(json);

      expect(style, parsed);
    });

    test('parses to and from map', () {
      NotedStyleSettings style = NotedStyleSettings(
        colorSchemeName: NotedColorSchemeName.green,
        customColorScheme: NotedColorScheme.dark,
        textThemeName: NotedTextThemeName.roboto,
      );

      Map<String, dynamic> map = style.toMap();
      NotedStyleSettings parsed = NotedStyleSettings.fromMap(map);

      expect(style, parsed);
    });

    test('fetches current color scheme', () {
      NotedStyleSettings blue = NotedStyleSettings();
      expect(blue.colorScheme, NotedColorScheme.blue);

      NotedStyleSettings green = NotedStyleSettings(colorSchemeName: NotedColorSchemeName.green);
      expect(green.colorScheme, NotedColorScheme.green);

      NotedStyleSettings dark = NotedStyleSettings(colorSchemeName: NotedColorSchemeName.dark);
      expect(dark.colorScheme, NotedColorScheme.dark);

      NotedStyleSettings oled = NotedStyleSettings(colorSchemeName: NotedColorSchemeName.oled);
      expect(oled.colorScheme, NotedColorScheme.oled);

      NotedStyleSettings light = NotedStyleSettings(colorSchemeName: NotedColorSchemeName.light);
      expect(light.colorScheme, NotedColorScheme.light);

      NotedStyleSettings custom = NotedStyleSettings(colorSchemeName: NotedColorSchemeName.custom);
      expect(custom.colorScheme, NotedColorScheme.blue);
    });
  });
}
