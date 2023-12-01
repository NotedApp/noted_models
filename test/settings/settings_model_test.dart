import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('SettingsModel', () {
    test('creates a default set of settings', () {
      SettingsModel settings = const SettingsModel();

      expect(settings.style, const StyleSettingsModel());
      expect(settings.tags, const TagSettingsModel());
      expect(settings.plugins, const PluginSettingsModel());
    });

    test('parses to and from json', () {
      SettingsModel settings = const SettingsModel();
      String json = settings.toJson();
      SettingsModel parsed = SettingsModel.fromJson(json);

      expect(settings, parsed);
    });

    test('parses to and from map', () {
      SettingsModel settings = const SettingsModel();
      Map<String, dynamic> map = settings.toMap();
      SettingsModel parsed = SettingsModel.fromMap(map);

      expect(settings, parsed);
    });
  });
}
