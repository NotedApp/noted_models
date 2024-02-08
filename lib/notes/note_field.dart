import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'note_field.mapper.dart';

/// Acceptable types:
/// - String
/// - bool
/// - int
/// - DateTime
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
  climbingSetting<String>('indoors'),
  climbingType<String>('boulder'),
  climbingAttemptsUtc<List<DateTime>>([]),
  climbingTopsUtc<List<DateTime>>([]);

  final T defaultValue;

  const NoteField(this.defaultValue);
}
