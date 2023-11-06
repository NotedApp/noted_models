import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('NotebookNoteModel', () {
    test('creates an empty note', () {
      NotebookNoteModel note = NotebookNoteModel.empty();

      expect(note.id, '');
      expect(note.title, '');
      expect(note.tagIds.length, 0);
      expect(note.document.length, 1);

      expect(note.plugin, NotedPlugin.notebook);
    });

    test('parses to and from json', () {
      NotebookNoteModel note = NotebookNoteModel(id: 'test-id', title: 'test-title', document: []);
      String json = note.toJson();
      NotebookNoteModel parsed = NotebookNoteModel.fromJson(json);

      expect(note, parsed);
    });

    test('parses to and from map', () {
      NotebookNoteModel note = NotebookNoteModel(id: 'test-id', title: 'test-title', document: []);
      Map<String, dynamic> map = note.toMap();
      NotebookNoteModel parsed = NotebookNoteModel.fromMap(map);

      expect(note, parsed);
    });
  });
}
