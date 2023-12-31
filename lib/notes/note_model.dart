import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'note_model.mapper.dart';
part 'notebook_note_model.dart';
part 'cookbook_note_model.dart';

@MappableClass(discriminatorKey: 'plugin')
sealed class NoteModel with NoteModelMappable {
  final String id;
  final String title;
  final Set<TagId> tagIds;

  NotedPlugin get plugin;

  static const fromMap = NoteModelMapper.fromMap;
  static const fromJson = NoteModelMapper.fromJson;

  const NoteModel({
    required this.id,
    required this.title,
    required this.tagIds,
  });
}
