import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  const TagModel tag0 = TagModel(id: '0', name: 'tag 0', color: 0xFFFFFF);
  const TagModel tag1 = TagModel(id: '1', name: 'tag 1', color: 0x000000);

  group('NotedTagSettings', () {
    test('creates and gets set of tag settings', () {
      TagSettingsModel tags = TagSettingsModel(tags: {tag0, tag1});

      expect(tags.tags, {tag0, tag1});
      expect(tags.getTag('0'), tag0);
      expect(tags.getTag('1'), tag1);
    });

    test('parses to and from json', () {
      TagSettingsModel tags = TagSettingsModel(tags: {tag0, tag1});

      String json = tags.toJson();
      TagSettingsModel parsed = TagSettingsModel.fromJson(json);

      expect(tags, parsed);
    });

    test('parses to and from map', () {
      TagSettingsModel tags = TagSettingsModel(tags: {tag0, tag1});

      Map<String, dynamic> map = tags.toMap();
      TagSettingsModel parsed = TagSettingsModel.fromMap(map);

      expect(tags, parsed);
    });
  });
}
