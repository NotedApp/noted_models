import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('PluginSettingsModel', () {
    test('creates a default set of settings', () {
      PluginSettingsModel settings = PluginSettingsModel();

      expect(settings.cookbook, CookbookSettingsModel());
    });

    test('parses to and from json', () {
      PluginSettingsModel settings = PluginSettingsModel();
      String json = settings.toJson();
      PluginSettingsModel parsed = PluginSettingsModel.fromJson(json);

      expect(settings, parsed);
    });

    test('parses to and from map', () {
      PluginSettingsModel settings = PluginSettingsModel();
      Map<String, dynamic> map = settings.toMap();
      PluginSettingsModel parsed = PluginSettingsModel.fromMap(map);

      expect(settings, parsed);
    });
  });
}
