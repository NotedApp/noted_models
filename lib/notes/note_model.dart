import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'note_model.mapper.dart';

@MappableClass()
final class NoteModel with NoteModelMappable {
  final String id;
  final String templateId;
  final NoteDefaultFields defaultFields;
  final Map<String, NoteField> fields;
  final NoteEditLayout editLayout;
  final NoteCardLayout cardLayout;

  const NoteModel({
    required this.id,
    required this.templateId,
    this.defaultFields = const NoteDefaultFields(),
    this.fields = const {},
    this.editLayout = const NoteEditLayout(),
    this.cardLayout = const NoteCardLayout(),
  });

  static const fromMap = NoteModelMapper.fromMap;
  static const fromJson = NoteModelMapper.fromJson;
}

@MappableClass()
final class NoteDefaultFields with NoteDefaultFieldsMappable {
  final String coverImage;
  final DocumentModel? document;
  final bool hidden;
  final bool archived;
  final DateTime? lastUpdatedUtc;

  const NoteDefaultFields({
    this.coverImage = '',
    this.document = Document.empty,
    this.hidden = false,
    this.archived = false,
    this.lastUpdatedUtc,
  });
}
