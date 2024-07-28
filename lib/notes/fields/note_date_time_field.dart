part of 'note_field.dart';

@MappableClass(discriminatorValue: 'dateTime')
class NoteDateTimeField extends NoteField<DateTime?> with NoteDateTimeFieldMappable {
  @MappableField(hook: _DateTimeHook())
  @override
  // ignore: overridden_fields
  final DateTime? value;

  @override
  String? get searchableText => null;

  const NoteDateTimeField({
    required super.id,
    required super.name,
    this.value,
  }) : super(value: value);
}

class _DateTimeHook extends MappingHook {
  const _DateTimeHook();

  @override
  Object? beforeEncode(Object? value) => value is DateTime ? value.toIso8601String() : value;

  @override
  Object? afterDecode(Object? value) => value == null ? null : DateTime.tryParse(value.toString());
}
