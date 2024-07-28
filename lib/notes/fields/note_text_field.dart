import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'note_text_field.mapper.dart';

@MappableClass(discriminatorValue: 'text')
class NoteTextField extends NoteField<String> with NoteTextFieldMappable {
  final NoteTextFieldType type;

  @override
  String? get searchableText => value;

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
