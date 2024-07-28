part of 'note_field.dart';

@MappableClass(discriminatorValue: 'link')
class NoteLinkField extends NoteField<String> with NoteLinkFieldMappable {
  final bool useAsCoverImage;

  @override
  String? get searchableText => value;

  @override
  bool get isEmpty => value.isEmpty;

  const NoteLinkField({
    required super.id,
    required super.name,
    super.value = '',
    this.useAsCoverImage = false,
  });
}
