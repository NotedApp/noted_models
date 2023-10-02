import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'note_model.mapper.dart';

@MappableClass(discriminatorKey: 'plugin')
sealed class NoteModel with NoteModelMappable {
  final String id;
  final String title;
  final Set<String> tags;

  const NoteModel({
    required this.id,
    required this.title,
    required this.tags,
  });
}

@MappableClass(discriminatorValue: 'notebook')
class NotebookNoteModel extends NoteModel with NotebookNoteModelMappable {
  final DocumentModel document;

  static final fromMap = NotebookNoteModelMapper.fromMap;
  static final fromJson = NotebookNoteModelMapper.fromJson;

  const NotebookNoteModel({
    required String id,
    required String title,
    Set<String> tags = const {},
    required this.document,
  }) : super(id: id, title: title, tags: tags);

  NotebookNoteModel.emptyQuill()
      : document = [
          {'insert': '\n'},
        ],
        super(id: '', title: '', tags: const {});
}
