import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('NoteModel', () {
    test('parses to and from json', () {
      NoteModel note = const NotebookNoteModel(id: 'test-id', title: 'test-title', document: []);
      String json = note.toJson();
      NoteModel parsed = NoteModel.fromJson(json);

      expect(note, parsed);
    });

    test('parses to and from map', () {
      NoteModel note = const NotebookNoteModel(id: 'test-id', title: 'test-title', document: []);
      Map<String, dynamic> map = note.toMap();
      NoteModel parsed = NoteModel.fromMap(map);

      expect(note, parsed);
    });
  });
}
