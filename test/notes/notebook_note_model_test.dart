import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

final _note = NoteModel.value(
  NotedPlugin.notebook,
  overrides: {
    NoteField.title: 'test-title',
    NoteField.tagIds: <String>['test-tag'],
    NoteField.hidden: true,
    NoteField.archived: true,
    NoteField.lastUpdatedUtc: null,
    NoteField.document: Document.mock,
  },
);

void main() {
  group('Notebook NoteModel', () {
    test('creates an empty note', () {
      final note = NoteModel.empty(NotedPlugin.notebook);

      expect(note.id, '');
      expect(note.plugin, NotedPlugin.notebook);

      expect(note.field(NoteField.title), '');
      expect(note.field(NoteField.tagIds).length, 0);
      expect(note.field(NoteField.hidden), false);
      expect(note.field(NoteField.archived), false);
      expect(note.field(NoteField.lastUpdatedUtc), null);
      expect(note.field(NoteField.document), Document.empty);
    });

    test('updates a field', () {
      final note = NoteModel.empty(NotedPlugin.notebook);
      expect(note.field(NoteField.title), '');

      final updated = note.copyWithField(NoteField.title, 'test-title');
      expect(updated.field(NoteField.title), 'test-title');
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
