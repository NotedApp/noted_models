import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('NotedTextTheme', () {
    test('parses to and from json', () {
      NotedTextTheme theme = NotedTextTheme.poppins;
      String json = theme.toJson();
      NotedTextTheme parsed = NotedTextThemeMapper.fromJson(json);

      expect(theme, parsed);
    });
  });
}
