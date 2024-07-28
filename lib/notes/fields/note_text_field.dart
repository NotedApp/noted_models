part of 'note_field.dart';

@MappableClass(discriminatorValue: 'text')
class NoteTextField extends NoteField<String> with NoteTextFieldMappable {
  final NoteTextFieldType type;

  @override
  String? get searchableText => value;

  @override
  bool get isEmpty => value.isEmpty;

  const NoteTextField({
    required super.id,
    required super.name,
    super.value = '',
    this.type = NoteTextFieldType.normal,
  });
}

@MappableEnum()
enum NoteTextFieldType {
  normal,
  title,
}
