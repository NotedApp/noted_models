part of 'note_model.dart';

@MappableClass(discriminatorValue: 'notebook')
class NotebookNoteModel extends NoteModel with NotebookNoteModelMappable {
  final DocumentModel document;

  @override
  NotedPlugin get plugin => NotedPlugin.notebook;

  static const fromMap = NotebookNoteModelMapper.fromMap;
  static const fromJson = NotebookNoteModelMapper.fromJson;

  NotebookNoteModel({
    required super.id,
    required super.title,
    super.tagIds = const {},
    required this.document,
    super.lastUpdatedUtc,
  });

  NotebookNoteModel.empty()
      : document = DocumentUtil.emptyDocument,
        super(id: '', title: '', tagIds: const {}); // coverage:ignore-line
}
