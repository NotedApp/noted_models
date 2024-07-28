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

  ValueType? getField<ValueType>(String fieldId) {
    final field = fields[fieldId];

    if (field == null || field is! NoteField<ValueType>) {
      return null;
    }

    return field.value;
  }

  NoteModel updateField<ValueType>(String fieldId, ValueType fieldValue) {
    final field = fields[fieldId];

    if (field == null || field is! NoteField<ValueType>) {
      return copyWith();
    }

    final updatedFields = {...fields};
    updatedFields[fieldId] = field.copyWith(value: fieldValue);
    return copyWith(fields: updatedFields);
  }

  static const fromMap = NoteModelMapper.fromMap;
  static const fromJson = NoteModelMapper.fromJson;
}

@MappableClass()
final class NoteDefaultFields with NoteDefaultFieldsMappable {
  final String coverImage;
  final DocumentModel? document;
  final bool hidden;
  final bool archived;

  @MappableField(hook: _DateTimeHook())
  final DateTime? lastUpdatedUtc;

  const NoteDefaultFields({
    this.coverImage = '',
    this.document = Document.empty,
    this.hidden = false,
    this.archived = false,
    this.lastUpdatedUtc,
  });
}

class _DateTimeHook extends MappingHook {
  const _DateTimeHook();

  @override
  Object? beforeEncode(Object? value) => value is DateTime ? value.toIso8601String() : value;

  @override
  Object? afterDecode(Object? value) => value == null ? null : DateTime.tryParse(value.toString());
}
