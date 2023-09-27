import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  const NotedTag tag0 = NotedTag(id: '0', name: 'tag 0', color: 0xFFFFFF);
  const NotedTag tag1 = NotedTag(id: '1', name: 'tag 1', color: 0x000000);

  group('NotedTagSettings', () {
    test('creates and gets set of tag settings', () {
      NotedTagSettings tags = NotedTagSettings(tags: {tag0, tag1});

      expect(tags.tags, {tag0, tag1});
      expect(tags.getTag('0'), tag0);
      expect(tags.getTag('1'), tag1);
    });

    test('parses to and from json', () {
      NotedTagSettings tags = NotedTagSettings(tags: {tag0, tag1});

      String json = tags.toJson();
      NotedTagSettings parsed = NotedTagSettings.fromJson(json);

      expect(tags, parsed);
    });

    test('parses to and from map', () {
      NotedTagSettings tags = NotedTagSettings(tags: {tag0, tag1});

      Map<String, dynamic> map = tags.toMap();
      NotedTagSettings parsed = NotedTagSettings.fromMap(map);

      expect(tags, parsed);
    });
  });
}
