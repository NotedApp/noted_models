import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('NotedTextTheme', () {
    test('parses to and from json', () {
      NotedTextTheme theme = NotedTextTheme.poppins;
      String json = theme.toJson();
      NotedTextTheme parsed = NotedTextTheme.fromJson(json);

      expect(theme, parsed);
    });

    test('parses to and from map', () {
      NotedTextTheme theme = NotedTextTheme.lora;
      Map<String, dynamic> map = theme.toMap();
      NotedTextTheme parsed = NotedTextTheme.fromMap(map);

      expect(theme, parsed);
    });

    test('gets from name', () {
      expect(
        NotedTextTheme.fromName(NotedTextThemeName.poppins),
        NotedTextTheme.poppins,
      );

      expect(
        NotedTextTheme.fromName(NotedTextThemeName.roboto),
        NotedTextTheme.roboto,
      );

      expect(
        NotedTextTheme.fromName(NotedTextThemeName.lora),
        NotedTextTheme.lora,
      );

      expect(
        NotedTextTheme.fromName(NotedTextThemeName.vollkorn),
        NotedTextTheme.vollkorn,
      );
    });
  });
}
