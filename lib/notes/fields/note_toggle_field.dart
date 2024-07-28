part of 'note_field.dart';

@MappableClass(discriminatorValue: 'toggle')
class NoteToggleField extends NoteField<bool> with NoteToggleFieldMappable {
  @override
  String? get searchableText => null;

  @override
  bool get isEmpty => false;

  const NoteToggleField({
    required super.id,
    required super.name,
    super.value = false,
  });
}
