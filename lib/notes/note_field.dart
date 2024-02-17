import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'note_field.mapper.dart';

@MappableClass()
class NoteFieldValue<T> with NoteFieldValueMappable {
  final NoteField<T> field;
  final T value;

  const NoteFieldValue(this.field, this.value);
}

/// Acceptable types:
/// - String
/// - bool
/// - int
/// - DateTime?
/// - List<{any of the above}>

@MappableEnum()
enum NoteField<T> {
  // Common
  title<String>(''),
  tagIds<List<TagId>>([]),
  hidden<bool>(false),
  archived<bool>(false),
  lastUpdatedUtc<DateTime?>(null),
  document<DocumentModel>(Document.empty),
  link<String>(''),
  imageUrl<String>(''),
  location<String>(''),

  // Cookbook
  cookbookPrepTime<String>(''),
  cookbookCookTime<String>(''),
  cookbookDifficulty<int>(0),

  // Climbing
  climbingRating<String>(''),
  climbingSetting<ClimbingSetting>(ClimbingSetting.indoor),
  climbingType<ClimbingType>(ClimbingType.boulder),
  climbingAttemptsUtc<List<DateTime>>([]),
  climbingTopsUtc<List<DateTime>>([]);

  final T defaultValue;

  const NoteField(this.defaultValue);
}

extension NotedPluginFields on NotedPlugin {
  List<NoteField> get fields {
    return switch (this) {
      NotedPlugin.notebook => _notebookFields,
      NotedPlugin.cookbook => _cookbookFields,
      NotedPlugin.climbing => _climbingFields,
    };
  }
}

const _notebookFields = <NoteField>[
  NoteField.title,
  NoteField.tagIds,
  NoteField.hidden,
  NoteField.archived,
  NoteField.lastUpdatedUtc,
  NoteField.document,
];

const _cookbookFields = <NoteField>[
  NoteField.title,
  NoteField.tagIds,
  NoteField.hidden,
  NoteField.archived,
  NoteField.lastUpdatedUtc,
  NoteField.link,
  NoteField.imageUrl,
  NoteField.document,
  NoteField.cookbookPrepTime,
  NoteField.cookbookCookTime,
  NoteField.cookbookDifficulty,
];

const _climbingFields = <NoteField>[
  NoteField.title,
  NoteField.tagIds,
  NoteField.hidden,
  NoteField.archived,
  NoteField.lastUpdatedUtc,
  NoteField.imageUrl,
  NoteField.location,
  NoteField.document,
  NoteField.climbingRating,
  NoteField.climbingSetting,
  NoteField.climbingType,
  NoteField.climbingAttemptsUtc,
  NoteField.climbingTopsUtc,
];
