part of 'note_model.dart';

@MappableClass(discriminatorValue: 'notebook')
class NotebookNoteModel extends NoteModel with NotebookNoteModelMappable {
  final DocumentModel document;

  @override
  NotedPlugin get plugin => NotedPlugin.notebook;

  static const fromMap = NotebookNoteModelMapper.fromMap;
  static const fromJson = NotebookNoteModelMapper.fromJson;

  const NotebookNoteModel({
    super.id = '',
    super.title = '',
    super.tagIds = const {},
    super.hidden = false,
    super.archived = false,
    super.lastUpdatedUtc,
    this.document = Document.empty,
  });

  const NotebookNoteModel.empty() : this();
}
