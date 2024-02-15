import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'note_model.mapper.dart';

@MappableClass()
final class NoteModel with NoteModelMappable {
  final String id;
  final NotedPlugin plugin;

  @MappableField(hook: FieldsHook())
  final Map<String, dynamic> fields;

  const NoteModel({
    required this.id,
    required this.plugin,
    this.fields = const {},
  });

  NoteModel._({
    required NotedPlugin plugin,
    required List<NoteField> fields,
    List<NoteFieldValue> overrides = const [],
  }) : this(
          id: '',
          plugin: plugin,
          fields: {
            for (final field in fields)
              field.name: overrides
                  .firstWhere(
                    (override) => override.field == field,
                    orElse: () => NoteFieldValue(field, field.defaultValue),
                  )
                  .value,
          },
        );

  NoteModel.value(
    NotedPlugin plugin, {
    List<NoteFieldValue> overrides = const [],
  }) : this._(plugin: plugin, fields: plugin.fields, overrides: overrides);

  NoteModel.empty(NotedPlugin plugin) : this.value(plugin);

  T field<T>(NoteField<T> field) {
    final value = fields[field.name];
    return value is T ? value : field.defaultValue;
  }

  NoteModel copyWithField<T>(NoteFieldValue<T> update) {
    final updated = Map.of(fields);
    updated[update.field.name] = update.value;
    return copyWith(fields: updated);
  }

  static const fromMap = NoteModelMapper.fromMap;
  static const fromJson = NoteModelMapper.fromJson;
}

class FieldsHook extends MappingHook {
  const FieldsHook();

  @override
  Object? afterDecode(Object? value) {
    if (value is! Map<String, dynamic>) {
      return value;
    }

    return value.map(
      (key, value) => switch (NoteFieldMapper.fromValue(key).runtimeType) {
        const (NoteField<DateTime?>) => MapEntry(key, value == null ? null : DateTime.parse(value)),
        const (NoteField<Set>) => MapEntry(key, value is List ? value.toSet() : value),
        _ => MapEntry(key, value),
      },
    );
  }

  @override
  Object? beforeEncode(Object? value) {
    if (value is! Map<String, dynamic>) {
      return value;
    }

    return value.map(
      (key, value) => switch (NoteFieldMapper.fromValue(key).runtimeType) {
        const (NoteField<DateTime?>) => MapEntry(key, value is DateTime ? value.toIso8601String() : value),
        const (NoteField<Set>) => MapEntry(key, value is Set ? value.toList() : value),
        _ => MapEntry(key, value),
      },
    );
  }
}
