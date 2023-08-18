import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('NotedStyleSettings', () {
    test('creates a default set of style settings', () {
      NotedStyleSettings style = NotedStyleSettings();

      expect(style.currentColorSchemeName, NotedColorSchemeName.blue);
      expect(style.customColorScheme, NotedColorScheme.blue);
      expect(style.textTheme, NotedTextTheme.poppins);
    });

    test('parses to and from json', () {
      NotedStyleSettings style = NotedStyleSettings(
        currentColorSchemeName: NotedColorSchemeName.green,
        customColorScheme: NotedColorScheme.dark,
        textTheme: NotedTextTheme.roboto,
      );

      String json = style.toJson();
      NotedStyleSettings parsed = NotedStyleSettings.fromJson(json);

      expect(style, parsed);
    });

    test('parses to and from map', () {
      NotedStyleSettings style = NotedStyleSettings(
        currentColorSchemeName: NotedColorSchemeName.green,
        customColorScheme: NotedColorScheme.dark,
        textTheme: NotedTextTheme.roboto,
      );

      Map<String, dynamic> map = style.toMap();
      NotedStyleSettings parsed = NotedStyleSettings.fromMap(map);

      expect(style, parsed);
    });

    test('fetches current color scheme', () {
      NotedStyleSettings blue = NotedStyleSettings();
      expect(blue.currentColorScheme, NotedColorScheme.blue);

      NotedStyleSettings green = NotedStyleSettings(currentColorSchemeName: NotedColorSchemeName.green);
      expect(green.currentColorScheme, NotedColorScheme.green);

      NotedStyleSettings dark = NotedStyleSettings(currentColorSchemeName: NotedColorSchemeName.dark);
      expect(dark.currentColorScheme, NotedColorScheme.dark);

      NotedStyleSettings oled = NotedStyleSettings(currentColorSchemeName: NotedColorSchemeName.oled);
      expect(oled.currentColorScheme, NotedColorScheme.oled);

      NotedStyleSettings light = NotedStyleSettings(currentColorSchemeName: NotedColorSchemeName.light);
      expect(light.currentColorScheme, NotedColorScheme.light);

      NotedStyleSettings custom = NotedStyleSettings(currentColorSchemeName: NotedColorSchemeName.custom);
      expect(custom.currentColorScheme, NotedColorScheme.blue);
    });
  });
}
