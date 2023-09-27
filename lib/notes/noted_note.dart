import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'noted_note.mapper.dart';

@MappableClass(discriminatorKey: 'plugin')
sealed class NotedNote with NotedNoteMappable {
  final String id;
  final String title;
  final Set<String> tags;

  const NotedNote({
    required this.id,
    required this.title,
    required this.tags,
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
    Set<String> tags = const {},
    required this.document,
  }) : super(id: id, title: title, tags: tags);

  NotebookNote.emptyQuill()
      : document = [
          {'insert': '\n'},
        ],
        super(id: '', title: '', tags: const {});
}
