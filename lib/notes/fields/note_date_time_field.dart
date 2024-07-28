part of 'note_field.dart';

@MappableClass(discriminatorValue: 'dateTime')
class NoteDateTimeField extends NoteField<DateTime> with NoteDateTimeFieldMappable {
  @override
  String? get searchableText => null;

  @override
  bool get isEmpty => value == defaultDate;

  const NoteDateTimeField({
    required super.id,
    required super.name,
    required super.value,
  });

  static final defaultDate = DateTime.fromMillisecondsSinceEpoch(0);
}
