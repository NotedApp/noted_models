import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'note_link_field.mapper.dart';

@MappableClass(discriminatorValue: 'link')
class NoteLinkField extends NoteField<String> with NoteLinkFieldMappable {
  final bool useAsCoverImage;

  @override
  String? get searchableText => value;

  const NoteLinkField({
    required super.id,
    required super.name,
    super.value = '',
    this.useAsCoverImage = false,
  });
}
