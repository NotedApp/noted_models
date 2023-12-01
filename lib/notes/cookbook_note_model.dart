part of 'note_model.dart';

@MappableClass(discriminatorValue: 'cookbook')
class CookbookNoteModel extends NoteModel with CookbookNoteModelMappable {
  final String url;
  final String prepTime;
  final String cookTime;
  final int difficulty;
  final Set<TagId> types;
  final Set<TagId> cuisines;
  final DocumentModel document;

  @override
  NotedPlugin get plugin => NotedPlugin.cookbook;

  static const fromMap = CookbookNoteModelMapper.fromMap;
  static const fromJson = CookbookNoteModelMapper.fromJson;

  const CookbookNoteModel({
    required super.id,
    required super.title,
    super.tagIds = const {},
    required this.url,
    required this.prepTime,
    required this.cookTime,
    required this.difficulty,
    this.types = const {},
    this.cuisines = const {},
    required this.document,
  });

  const CookbookNoteModel.empty()
      : url = '',
        prepTime = '',
        cookTime = '',
        difficulty = 3,
        types = const {},
        cuisines = const {},
        document = DocumentUtil.emptyDocument,
        super(id: '', title: '', tagIds: const {});
}

@MappableEnum()
enum RecipeType {
  breakfast,
  lunch,
  dinner,
  snack,
  drink,
}
