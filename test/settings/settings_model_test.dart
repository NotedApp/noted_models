import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('SettingsModel', () {
    test('creates a default set of settings', () {
      SettingsModel settings = SettingsModel();

      expect(settings.style, StyleSettingsModel());
      expect(settings.tags, TagSettingsModel());
      expect(settings.plugins, PluginSettingsModel());
    });

    test('parses to and from json', () {
      SettingsModel settings = SettingsModel();
      String json = settings.toJson();
      SettingsModel parsed = SettingsModel.fromJson(json);

      expect(settings, parsed);
    });

    test('parses to and from map', () {
      SettingsModel settings = SettingsModel();
      Map<String, dynamic> map = settings.toMap();
      SettingsModel parsed = SettingsModel.fromMap(map);

      expect(settings, parsed);
    });
  });
}
