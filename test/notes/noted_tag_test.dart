import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('NotedTag', () {
    test('creates a noted tag', () {
      TagModel test = TagModel(id: 'test', name: 'test-name', color: 0xFFFFFF);
      TagModel empty = TagModel.empty();

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
      TagModel tag = TagModel(id: 'test', name: 'test-name', color: 0xFFFFFF);
      String json = tag.toJson();
      TagModel parsed = TagModel.fromJson(json);

      expect(tag, parsed);
    });

    test('parses to and from map', () {
      TagModel tag = TagModel(id: 'test', name: 'test-name', color: 0xFFFFFF);
      Map<String, dynamic> map = tag.toMap();
      TagModel parsed = TagModel.fromMap(map);

      expect(tag, parsed);
    });
  });
}
