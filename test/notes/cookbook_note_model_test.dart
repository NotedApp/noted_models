import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

final _note = NoteModel.value(
  NotedPlugin.cookbook,
  overrides: {
    NoteField.title: 'test-title',
    NoteField.tagIds: <String>['test-tag'],
    NoteField.hidden: true,
    NoteField.archived: true,
    NoteField.link: 'test-link',
    NoteField.imageUrl: 'test-url',
    NoteField.document: Document.mock,
    NoteField.cookbookPrepTime: 'prep-time',
    NoteField.cookbookCookTime: 'cook-time',
    NoteField.cookbookDifficulty: 1,
  },
);

void main() {
  group('Cookbook NoteModel', () {
    test('creates an empty note', () {
      final note = NoteModel.empty(NotedPlugin.cookbook);

      expect(note.id, '');
      expect(note.plugin, NotedPlugin.cookbook);

      expect(note.field(NoteField.title), '');
      expect(note.field(NoteField.tagIds).length, 0);
      expect(note.field(NoteField.hidden), false);
      expect(note.field(NoteField.archived), false);
      expect(note.field(NoteField.lastUpdatedUtc), null);
      expect(note.field(NoteField.link), '');
      expect(note.field(NoteField.imageUrl), '');
      expect(note.field(NoteField.document), Document.empty);
      expect(note.field(NoteField.cookbookPrepTime), '');
      expect(note.field(NoteField.cookbookCookTime), '');
      expect(note.field(NoteField.cookbookDifficulty), 0);
    });

    test('parses to and from json', () {
      final json = _note.toJson();
      final parsed = NoteModel.fromJson(json);

      expect(parsed, _note);
    });

    test('parses to and from map', () {
      final map = _note.toMap();
      final parsed = NoteModel.fromMap(map);

      expect(parsed, _note);
    });
  });
}
