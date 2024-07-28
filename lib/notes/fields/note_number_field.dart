part of 'note_field.dart';

@MappableClass(discriminatorValue: 'number')
class NoteNumberField extends NoteField<double> with NoteNumberFieldMappable {
  final NoteNumberFieldType type;

  @override
  String? get searchableText => value.toString();

  @override
  bool get isEmpty => false;

  const NoteNumberField({
    required super.id,
    required super.name,
    super.value = 0,
    this.type = NoteNumberFieldType.normal,
  });
}

@MappableEnum()
enum NoteNumberFieldType {
  normal,
  currency,
  counter,
}
