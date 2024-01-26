import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('ClimbingNoteModel', () {
    test('creates an empty note', () {
      ClimbingNoteModel note = const ClimbingNoteModel.empty();

      expect(note.id, '');
      expect(note.title, '');
      expect(note.tagIds.length, 0);
      expect(note.hidden, false);
      expect(note.imageUrl, '');
      expect(note.difficulty, '');
      expect(note.location, '');
      expect(note.setting, ClimbingNoteSetting.indoors);
      expect(note.type, ClimbingNoteType.bouldering);
      expect(note.document, Document.empty);

      expect(note.plugin, NotedPlugin.climbing);
    });

    test('parses to and from json', () {
      ClimbingNoteModel note = const ClimbingNoteModel(
        id: 'test-id',
        title: 'test-title',
        hidden: true,
        imageUrl: 'test-url',
        difficulty: '5.11b',
        location: 'crg boston',
        setting: ClimbingNoteSetting.outdoors,
        type: ClimbingNoteType.sport,
        document: [],
      );
      String json = note.toJson();
      ClimbingNoteModel parsed = ClimbingNoteModel.fromJson(json);

      expect(note, parsed);
    });

    test('parses to and from map', () {
      ClimbingNoteModel note = const ClimbingNoteModel(
        id: 'test-id',
        title: 'test-title',
        hidden: true,
        imageUrl: 'test-url',
        difficulty: '5.11b',
        location: 'crg boston',
        setting: ClimbingNoteSetting.outdoors,
        type: ClimbingNoteType.sport,
        document: [],
      );
      Map<String, dynamic> map = note.toMap();
      ClimbingNoteModel parsed = ClimbingNoteModel.fromMap(map);

      expect(note, parsed);
    });

    test('parses from json with default values', () {
      String json = '{"plugin": "climbing", "id": "test"}';
      ClimbingNoteModel parsed = ClimbingNoteModel.fromJson(json);

      expect(parsed.id, 'test');
      expect(parsed.title, '');
    });

    test('parses from map with default values', () {
      Map<String, dynamic> map = {'plugin': 'climbing', 'id': 'test'};
      ClimbingNoteModel parsed = ClimbingNoteModel.fromMap(map);

      expect(parsed.id, 'test');
      expect(parsed.title, '');
    });
  });
}
