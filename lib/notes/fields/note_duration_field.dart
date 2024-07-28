part of 'note_field.dart';

@MappableClass(discriminatorValue: 'duration')
class NoteDurationField extends NoteField<Duration> with NoteDurationFieldMappable {
  @override
  bool get isEmpty => value == Duration.zero;

  @override
  String? get searchableText => null;

  const NoteDurationField({
    required super.id,
    required super.name,
    super.value = Duration.zero,
  });

  static const defaultDuration = Duration.zero;
}
