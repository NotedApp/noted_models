import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('CookbookNoteModel', () {
    test('creates an empty note', () {
      CookbookNoteModel note = const CookbookNoteModel.empty();

      expect(note.id, '');
      expect(note.title, '');
      expect(note.tagIds.length, 0);
      expect(note.hidden, false);
      expect(note.url, '');
      expect(note.prepTime, '');
      expect(note.cookTime, '');
      expect(note.difficulty, -1);
      expect(note.types, const <String>{});
      expect(note.cuisines, const <String>{});
      expect(note.document, Document.empty);
      expect(note.document.length, 1);

      expect(note.plugin, NotedPlugin.cookbook);
    });

    test('parses to and from json', () {
      CookbookNoteModel note = const CookbookNoteModel(
        id: 'test-id',
        title: 'test-title',
        hidden: true,
        url: 'test-url',
        prepTime: '1 hour',
        cookTime: '30 minutes',
        difficulty: 3,
        document: [],
      );
      String json = note.toJson();
      CookbookNoteModel parsed = CookbookNoteModel.fromJson(json);

      expect(note, parsed);
    });

    test('parses to and from map', () {
      CookbookNoteModel note = const CookbookNoteModel(
        id: 'test-id',
        title: 'test-title',
        hidden: true,
        url: 'test-url',
        prepTime: '1 hour',
        cookTime: '30 minutes',
        difficulty: 3,
        document: [],
      );
      Map<String, dynamic> map = note.toMap();
      CookbookNoteModel parsed = CookbookNoteModel.fromMap(map);

      expect(note, parsed);
    });
  });
}
