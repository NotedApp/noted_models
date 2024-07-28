import 'package:noted_models/noted_models.dart';
import 'package:noted_models/notes/templates/recipe_template.dart';
import 'package:test/test.dart';

void main() {
  group('NoteModel', () {
    test('creates an empty note', () {
      expect(recipeTemplate.id, 'recipe_template');
      expect(recipeTemplate.templateId, 'recipe_template');
      expect(recipeTemplate.fields[CommonField.title]?.name, 'title');
      expect(recipeTemplate.fields[CommonField.link]?.name, 'link');
    });

    test('parses to and from json', () {
      final json = recipeTemplate.toJson();
      final parsed = NoteModel.fromJson(json);

      expect(parsed, recipeTemplate);
    });

    test('parses to and from map', () {
      final map = recipeTemplate.toMap();
      final parsed = NoteModel.fromMap(map);

      expect(parsed, recipeTemplate);
    });
  });
}
