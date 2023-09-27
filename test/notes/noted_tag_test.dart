import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('NotedTag', () {
    test('creates a noted tag', () {
      NotedTag test = NotedTag(id: 'test', name: 'test-name', color: 0xFFFFFF);
      NotedTag empty = NotedTag.empty();

      expect(test.id, 'test');
      expect(test.name, 'test-name');
      expect(test.color, 0xFFFFFF);

      expect(empty.id, '-1');
      expect(empty.name, 'empty');
      expect(empty.color, 0x000000);

      expect(test.isEmpty, false);
      expect(empty.isEmpty, true);
      expect(test.isNotEmpty, true);
      expect(empty.isNotEmpty, false);
    });

    test('parses to and from json', () {
      NotedTag tag = NotedTag(id: 'test', name: 'test-name', color: 0xFFFFFF);
      String json = tag.toJson();
      NotedTag parsed = NotedTag.fromJson(json);

      expect(tag, parsed);
    });

    test('parses to and from map', () {
      NotedTag tag = NotedTag(id: 'test', name: 'test-name', color: 0xFFFFFF);
      Map<String, dynamic> map = tag.toMap();
      NotedTag parsed = NotedTag.fromMap(map);

      expect(tag, parsed);
    });
  });
}
