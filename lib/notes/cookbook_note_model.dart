part of 'note_model.dart';

@MappableClass(discriminatorValue: 'cookbook')
class CookbookNoteModel extends NoteModel with CookbookNoteModelMappable {
  final String url;
  final String imageUrl;
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
    super.id = '',
    super.title = '',
    super.tagIds = const {},
    super.hidden = false,
    super.archived = false,
    super.lastUpdatedUtc,
    this.url = '',
    this.imageUrl = '',
    this.prepTime = '',
    this.cookTime = '',
    this.difficulty = -1,
    this.types = const {},
    this.cuisines = const {},
    this.document = Document.empty,
  });

  const CookbookNoteModel.empty() : this();
}

@MappableEnum()
enum RecipeType {
  breakfast,
  lunch,
  dinner,
  snack,
  drink,
}
