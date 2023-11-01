part of 'note_model.dart';

@MappableEnum()
@MappableClass(discriminatorValue: 'cookbook')
class CookbookNoteModel extends NoteModel with CookbookNoteModelMappable {
  final String url;
  final DocumentModel document;

  static final fromMap = CookbookNoteModelMapper.fromMap;
  static final fromJson = CookbookNoteModelMapper.fromJson;

  const CookbookNoteModel({
    required super.id,
    required super.title,
    super.tagIds = const {},
    required this.url,
    required this.document,
  });

  const CookbookNoteModel.empty()
      : url = '',
        document = DocumentUtil.emptyDocument,
        super(id: '', title: '', tagIds: const {});
}
