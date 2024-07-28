part of 'note_field.dart';

@MappableClass(discriminatorValue: 'image')
class NoteImageField extends NoteField<String> with NoteImageFieldMappable {
  final NoteImageFieldType type;
  final bool useAsCoverImage;

  @override
  String? get searchableText => value;

  const NoteImageField({
    required super.id,
    required super.name,
    super.value = '',
    this.type = NoteImageFieldType.remote,
    this.useAsCoverImage = false,
  });
}

@MappableEnum()
enum NoteImageFieldType {
  remote,
}
