import 'package:dart_mappable/dart_mappable.dart';

part 'note_field.mapper.dart';
part 'note_date_time_field.dart';
part 'note_image_field.dart';
part 'note_link_field.dart';
part 'note_number_field.dart';
part 'note_select_field.dart';
part 'note_text_field.dart';
part 'note_toggle_field.dart';

@MappableClass(discriminatorKey: 'fieldType')
sealed class NoteField<T> with NoteFieldMappable {
  final String id;
  final String name;
  final T value;

  String? get searchableText;

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
