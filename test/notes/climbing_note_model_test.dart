import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

final _note = NoteModel.value(
  NotedPlugin.climbing,
  overrides: {
    NoteField.title: 'test-title',
    NoteField.tagIds: <String>['test-tag'],
    NoteField.hidden: true,
    NoteField.archived: true,
    NoteField.imageUrl: 'test-url',
    NoteField.location: 'crg boston',
    NoteField.document: Document.mock,
    NoteField.climbingRating: 'V5',
    NoteField.climbingSetting: 'outdoors',
    NoteField.climbingType: 'sport',
  },
);

void main() {
  group('Climbing NoteModel', () {
    test('creates an empty note', () {
      final note = NoteModel.empty(NotedPlugin.climbing);

      expect(note.id, '');
      expect(note.plugin, NotedPlugin.climbing);

      expect(note.field(NoteField.title), '');
      expect(note.field(NoteField.tagIds).length, 0);
      expect(note.field(NoteField.hidden), false);
      expect(note.field(NoteField.archived), false);
      expect(note.field(NoteField.lastUpdatedUtc), null);
      expect(note.field(NoteField.imageUrl), '');
      expect(note.field(NoteField.location), '');
      expect(note.field(NoteField.document), Document.empty);
      expect(note.field(NoteField.climbingRating), '');
      expect(note.field(NoteField.climbingSetting), 'indoors');
      expect(note.field(NoteField.climbingType), 'boulder');
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
