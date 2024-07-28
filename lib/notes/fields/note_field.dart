import 'package:dart_mappable/dart_mappable.dart';

part 'note_field.mapper.dart';
part 'note_date_time_field.dart';
part 'note_duration_field.dart';
part 'note_image_field.dart';
part 'note_link_field.dart';
part 'note_number_field.dart';
part 'note_select_field.dart';
part 'note_text_field.dart';
part 'note_toggle_field.dart';

@MappableClass(discriminatorKey: 'fieldType', includeCustomMappers: [_DateTimeMapper(), _DurationMapper()])
sealed class NoteField<T> with NoteFieldMappable {
  final String id;
  final String name;
  final T value;

  String? get searchableText;
  bool get isEmpty;

  const NoteField({
    required this.id,
    required this.name,
    required this.value,
  });
}

abstract class CommonField {
  static const title = 'title';
  static const link = 'link';
  static const note = 'note';
}

class _DateTimeMapper extends SimpleMapper<DateTime> {
  const _DateTimeMapper();

  @override
  Object? encode(DateTime self) => self.toIso8601String();

  @override
  DateTime decode(Object value) => DateTime.tryParse(value.toString()) ?? NoteDateTimeField.defaultDate;
}

class _DurationMapper extends SimpleMapper<Duration> {
  const _DurationMapper();

  @override
  Object? encode(Duration self) => self.inMilliseconds.toString();

  @override
  Duration decode(Object value) => Duration(milliseconds: int.tryParse(value.toString()) ?? 0);
}
