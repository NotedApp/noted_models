import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/rich_text/noted_document.dart';
import 'package:noted_models/spaces/noted_note.dart';

part 'notebook_note.mapper.dart';

/// A model for a notebook note.
@MappableClass(discriminatorValue: 'notebook')
class NotebookNote extends NotedNote with NotebookNoteMappable {
  final String id;
  final String title;
  final NotedDocument document;

  static final fromMap = NotebookNoteMapper.fromMap;
  static final fromJson = NotebookNoteMapper.fromJson;

  const NotebookNote({
    required this.id,
    required this.title,
    required this.document,
  });

  NotebookNote.empty({
    required this.id,
  })  : title = '',
        document = [];
}
