import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/rich_text/noted_document.dart';

part 'noted_note.mapper.dart';

@MappableClass(discriminatorKey: 'plugin')
sealed class NotedNote with NotedNoteMappable {
  final String id;
  final String title;

  const NotedNote({
    required this.id,
    required this.title,
  });
}

@MappableClass(discriminatorValue: 'notebook')
class NotebookNote extends NotedNote with NotebookNoteMappable {
  final NotedDocument document;

  static final fromMap = NotebookNoteMapper.fromMap;
  static final fromJson = NotebookNoteMapper.fromJson;

  const NotebookNote({
    required String id,
    required String title,
    required this.document,
  }) : super(id: id, title: title);

  NotebookNote.emptyQuill()
      : document = [
          {'insert': '\n'},
        ],
        super(id: '', title: '');
}
