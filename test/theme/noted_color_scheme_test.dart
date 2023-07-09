import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('NotedColorScheme', () {
    test('parses to and from json', () {
      NotedColorScheme scheme = NotedColorScheme.blue;
      String json = scheme.toJson();
      NotedColorScheme parsed = NotedColorScheme.fromJson(json);

      expect(scheme, parsed);
    });

    test('parses to and from map', () {
      NotedColorScheme scheme = NotedColorScheme.green;
      Map<String, dynamic> map = scheme.toMap();
      NotedColorScheme parsed = NotedColorScheme.fromMap(map);

      expect(scheme, parsed);
    });
  });
}
