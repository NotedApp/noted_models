import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('NotedSettings', () {
    test('creates a default set of settings', () {
      NotedSettings settings = NotedSettings();

      expect(settings.style, NotedStyleSettings());
    });

    test('parses to and from json', () {
      NotedSettings settings = NotedSettings();
      String json = settings.toJson();
      NotedSettings parsed = NotedSettings.fromJson(json);

      expect(settings, parsed);
    });

    test('parses to and from map', () {
      NotedSettings settings = NotedSettings();
      Map<String, dynamic> map = settings.toMap();
      NotedSettings parsed = NotedSettings.fromMap(map);

      expect(settings, parsed);
    });
  });
}
