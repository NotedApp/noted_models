import 'package:dart_mappable/dart_mappable.dart';

part 'note_field.mapper.dart';

@MappableClass(discriminatorKey: 'type')
abstract class NoteField<T> with NoteFieldMappable {
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
