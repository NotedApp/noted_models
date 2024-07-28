import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'note_date_time_field.mapper.dart';

@MappableClass(discriminatorValue: 'dateTime')
class NoteDateTimeField extends NoteField<DateTime?> with NoteDateTimeFieldMappable {
  @override
  String? get searchableText => value?.toString();

  const NoteDateTimeField({
    required super.id,
    required super.name,
    super.value,
  });
}
