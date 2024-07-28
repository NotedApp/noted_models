import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'note_toggle_field.mapper.dart';

@MappableClass(discriminatorValue: 'toggle')
class NoteToggleField extends NoteField<bool> with NoteToggleFieldMappable {
  @override
  String? get searchableText => null;

  const NoteToggleField({
    required super.id,
    required super.name,
    super.value = false,
  });
}
