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
    required super.hidden,
    required this.document,
    super.lastUpdatedUtc,
  });

  NotebookNoteModel.empty()
      : document = Document.empty,
        super(id: '', title: '', tagIds: const {}, hidden: false); // coverage:ignore-line
}
