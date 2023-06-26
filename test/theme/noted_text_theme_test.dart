import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('NotedTextTheme', () {
    test('parses to and from json', () {
      NotedTextTheme theme = NotedTextTheme.poppins;
      Map<String, Object?> json = theme.toJson();
      NotedTextTheme parsed = NotedTextTheme.fromJson(json);

      expect(theme, parsed);
    });
  });
}
