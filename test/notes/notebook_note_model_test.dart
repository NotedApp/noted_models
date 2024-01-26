import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('NotebookNoteModel', () {
    test('creates an empty note', () {
      NotebookNoteModel note = const NotebookNoteModel.empty();

      expect(note.id, '');
      expect(note.title, '');
      expect(note.tagIds.length, 0);
      expect(note.hidden, false);
      expect(note.document.length, 1);

      expect(note.plugin, NotedPlugin.notebook);
    });

    test('parses to and from json', () {
      NotebookNoteModel note = const NotebookNoteModel(
        id: 'test-id',
        title: 'test-title',
        hidden: true,
        document: [],
      );

      String json = note.toJson();
      NotebookNoteModel parsed = NotebookNoteModel.fromJson(json);

      expect(note, parsed);
    });

    test('parses to and from map', () {
      NotebookNoteModel note = const NotebookNoteModel(
        id: 'test-id',
        title: 'test-title',
        hidden: true,
        document: [],
      );

      Map<String, dynamic> map = note.toMap();
      NotebookNoteModel parsed = NotebookNoteModel.fromMap(map);

      expect(note, parsed);
    });

    test('parses from json with default values', () {
      String json = '{"plugin": "notebook", "id": "test"}';
      NotebookNoteModel parsed = NotebookNoteModel.fromJson(json);

      expect(parsed.id, 'test');
      expect(parsed.title, '');
    });

    test('parses from map with default values', () {
      Map<String, dynamic> map = {'plugin': 'notebook', 'id': 'test'};
      NotebookNoteModel parsed = NotebookNoteModel.fromMap(map);

      expect(parsed.id, 'test');
      expect(parsed.title, '');
    });
  });
}
