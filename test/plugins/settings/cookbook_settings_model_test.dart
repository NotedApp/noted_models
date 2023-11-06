import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('CookbookSettingsModel', () {
    test('creates a default set of settings', () {
      CookbookSettingsModel settings = CookbookSettingsModel();

      expect(settings.showUrl, true);
      expect(settings.showPrepTime, true);
      expect(settings.showCookTime, true);
      expect(settings.showDifficulty, true);
      expect(settings.showTypes, true);
      expect(settings.showCuisines, true);
      expect(settings.typeTags, <TagModel>{});
      expect(settings.cuisineTags, <TagModel>{});
    });

    test('parses to and from json', () {
      CookbookSettingsModel settings = CookbookSettingsModel();
      String json = settings.toJson();
      CookbookSettingsModel parsed = CookbookSettingsModel.fromJson(json);

      expect(settings, parsed);
    });

    test('parses to and from map', () {
      CookbookSettingsModel settings = CookbookSettingsModel();
      Map<String, dynamic> map = settings.toMap();
      CookbookSettingsModel parsed = CookbookSettingsModel.fromMap(map);

      expect(settings, parsed);
    });
  });
}
