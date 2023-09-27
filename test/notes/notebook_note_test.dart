import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('NotebookNote', () {
    test('creates an empty note', () {
      NotebookNote note = NotebookNote.emptyQuill();

      expect(note.id, '');
      expect(note.title, '');
      expect(note.document.length, 1);
    });

    test('parses to and from json', () {
      NotebookNote note = NotebookNote(id: 'test-id', title: 'test-title', document: []);
      String json = note.toJson();
      NotebookNote parsed = NotebookNote.fromJson(json);

      expect(note, parsed);
    });

    test('parses to and from map', () {
      NotebookNote note = NotebookNote(id: 'test-id', title: 'test-title', document: []);
      Map<String, dynamic> map = note.toMap();
      NotebookNote parsed = NotebookNote.fromMap(map);

      expect(note, parsed);
    });
  });
}
