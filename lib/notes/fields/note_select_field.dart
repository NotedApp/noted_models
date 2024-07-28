import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'note_select_field.mapper.dart';

@MappableClass(discriminatorValue: 'select')
class NoteSelectField extends NoteField<String> with NoteSelectFieldMappable {
  final List<String> options;

  @override
  String? get searchableText => value;

  const NoteSelectField({
    required super.id,
    required super.name,
    super.value = '',
    this.options = const [],
  });
}
