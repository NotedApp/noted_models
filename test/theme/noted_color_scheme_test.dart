import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('NotedColorScheme', () {
    test('parses to and from json', () {
      NotedColorScheme scheme = NotedColorScheme.blue;
      String json = scheme.toJson();
      NotedColorScheme parsed = NotedColorSchemeMapper.fromJson(json);

      expect(scheme, parsed);
    });
  });
}
