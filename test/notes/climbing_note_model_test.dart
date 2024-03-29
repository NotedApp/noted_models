import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

final _note = NoteModel.value(
  NotedPlugin.climbing,
  overrides: [
    const NoteFieldValue(NoteField.title, 'test-title'),
    const NoteFieldValue(NoteField.tagIds, <String>['test-tag']),
    const NoteFieldValue(NoteField.hidden, true),
    const NoteFieldValue(NoteField.archived, true),
    const NoteFieldValue(NoteField.imageUrl, 'test-url'),
    const NoteFieldValue(NoteField.location, 'crg boston'),
    NoteFieldValue(NoteField.lastUpdatedUtc, DateTime.now().toUtc()),
    const NoteFieldValue(NoteField.document, Document.mock),
    const NoteFieldValue(NoteField.climbingRating, 'V5'),
    const NoteFieldValue(NoteField.climbingSetting, ClimbingSetting.outdoor),
    const NoteFieldValue(NoteField.climbingType, ClimbingType.sport),
    NoteFieldValue(NoteField.climbingAttemptsUtc, [DateTime.fromMillisecondsSinceEpoch(0, isUtc: true)]),
    NoteFieldValue(NoteField.climbingTopsUtc, [DateTime.fromMillisecondsSinceEpoch(10, isUtc: true)]),
  ],
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
      expect(note.field(NoteField.climbingSetting), ClimbingSetting.indoor);
      expect(note.field(NoteField.climbingType), ClimbingType.boulder);
      expect(note.field(NoteField.climbingAttemptsUtc), []);
      expect(note.field(NoteField.climbingTopsUtc), []);
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
