import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'note_number_field.mapper.dart';

@MappableClass(discriminatorValue: 'number')
class NoteNumberField extends NoteField<double> with NoteNumberFieldMappable {
  final NoteNumberFieldType type;

  @override
  String? get searchableText => value.toString();

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
