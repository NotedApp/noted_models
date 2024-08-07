part of 'note_field.dart';

@MappableClass(discriminatorValue: 'select')
class NoteSelectField extends NoteField<String> with NoteSelectFieldMappable {
  final List<String> options;

  @override
  String? get searchableText => value;

  @override
  bool get isEmpty => value.isEmpty;

  const NoteSelectField({
    required super.id,
    required super.name,
    super.value = '',
    this.options = const [],
  });
}
