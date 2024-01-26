import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'note_model.mapper.dart';
part 'climbing_note_model.dart';
part 'cookbook_note_model.dart';
part 'notebook_note_model.dart';

@MappableClass(discriminatorKey: 'plugin')
sealed class NoteModel with NoteModelMappable {
  final String id;
  final String title;
  final Set<TagId> tagIds;
  final bool hidden;
  final bool archived;
  final DateTime? lastUpdatedUtc;

  NotedPlugin get plugin;

  static const fromMap = NoteModelMapper.fromMap;
  static const fromJson = NoteModelMapper.fromJson;

  const NoteModel({
    this.id = '',
    this.title = '',
    this.tagIds = const {},
    this.hidden = false,
    this.archived = false,
    this.lastUpdatedUtc,
  });
}
