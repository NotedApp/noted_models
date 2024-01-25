import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('ClimbingNoteModel', () {
    test('creates an empty note', () {
      ClimbingNoteModel note = ClimbingNoteModel.empty();

      expect(note.id, '');
      expect(note.title, '');
      expect(note.tagIds.length, 0);
      expect(note.hidden, false);
      expect(note.imageUrl, '');
      expect(note.difficulty, '');
      expect(note.location, ClimbingNoteLocation.indoors);
      expect(note.type, ClimbingNoteType.bouldering);
      expect(note.document, Document.empty);

      expect(note.plugin, NotedPlugin.climbing);
    });

    test('parses to and from json', () {
      ClimbingNoteModel note = ClimbingNoteModel(
        id: 'test-id',
        title: 'test-title',
        hidden: true,
        imageUrl: 'test-url',
        difficulty: '5.11b',
        location: ClimbingNoteLocation.outdoors,
        type: ClimbingNoteType.sport,
        document: [],
      );
      String json = note.toJson();
      ClimbingNoteModel parsed = ClimbingNoteModel.fromJson(json);

      expect(note, parsed);
    });

    test('parses to and from map', () {
      ClimbingNoteModel note = ClimbingNoteModel(
        id: 'test-id',
        title: 'test-title',
        hidden: true,
        imageUrl: 'test-url',
        difficulty: '5.11b',
        location: ClimbingNoteLocation.outdoors,
        type: ClimbingNoteType.sport,
        document: [],
      );
      Map<String, dynamic> map = note.toMap();
      ClimbingNoteModel parsed = ClimbingNoteModel.fromMap(map);

      expect(note, parsed);
    });
  });
}
