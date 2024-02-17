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
  }) : this(id: '', plugin: plugin, fields: _overrideFields(fields, overrides));

  NoteModel.value(
    NotedPlugin plugin, {
    List<NoteFieldValue> overrides = const [],
  }) : this._(plugin: plugin, fields: plugin.fields, overrides: overrides);

  NoteModel.empty(NotedPlugin plugin) : this.value(plugin);

  T field<T>(NoteField<T> field) {
    final value = fields[field.name];
    return value is T ? value : field.defaultValue;
  }

  NoteModel copyWithField<T>(NoteFieldValue<T> update, {bool updateDateTime = true}) {
    final updated = Map.of(fields);
    updated[update.field.name] = update.value;

    if (updateDateTime) {
      updated[NoteField.lastUpdatedUtc.name] = DateTime.now().toUtc();
    }

    return copyWith(fields: updated);
  }

  NoteModel copyWithFields(List<NoteFieldValue> updates, {bool updateDateTime = true}) {
    final updated = Map.of(fields);

    for (final update in updates) {
      updated[update.field.name] = update.value;
    }

    if (updateDateTime) {
      updated[NoteField.lastUpdatedUtc.name] = DateTime.now().toUtc();
    }

    return copyWith(fields: updated);
  }

  static const fromMap = NoteModelMapper.fromMap;
  static const fromJson = NoteModelMapper.fromJson;

  static Map<String, dynamic> _overrideFields(List<NoteField> fields, List<NoteFieldValue> overrides) {
    final overridesMap = {for (final override in overrides) override.field.name: override.value};
    return {for (final field in fields) field.name: overridesMap[field.name] ?? field.defaultValue};
  }
}

class FieldsHook extends MappingHook {
  const FieldsHook();

  @override
  Object? beforeEncode(Object? value) {
    if (value is! Map<String, dynamic>) {
      return value;
    }

    return value.map(
      (key, value) => switch (NoteFieldMapper.fromValue(key).runtimeType) {
        const (NoteField<DateTime?>) => const DateTimeHook().beforeEncode(key, value),
        const (NoteField<List<DateTime>>) => const ListDateTimeHook().beforeEncode(key, value),
        const (NoteField<ClimbingSetting>) => const ClimbingSettingHook().beforeEncode(key, value),
        const (NoteField<ClimbingType>) => const ClimbingTypeHook().beforeEncode(key, value),
        _ => MapEntry(key, value),
      },
    );
  }

  @override
  Object? afterDecode(Object? value) {
    if (value is! Map<String, dynamic>) {
      return value;
    }

    return value.map(
      (key, value) => switch (NoteFieldMapper.fromValue(key).runtimeType) {
        const (NoteField<DateTime?>) => const DateTimeHook().afterDecode(key, value),
        const (NoteField<List<DateTime>>) => const ListDateTimeHook().afterDecode(key, value),
        const (NoteField<ClimbingSetting>) => const ClimbingSettingHook().afterDecode(key, value),
        const (NoteField<ClimbingType>) => const ClimbingTypeHook().afterDecode(key, value),
        _ => MapEntry(key, value),
      },
    );
  }
}

abstract class FieldHook<T, S> {
  const FieldHook();

  MapEntry<String, S> beforeEncode(String key, value);
  MapEntry<String, T> afterDecode(String key, value);
}

class DateTimeHook extends FieldHook<DateTime?, String?> {
  const DateTimeHook();

  @override
  MapEntry<String, String?> beforeEncode(String key, value) =>
      MapEntry(key, value is DateTime ? value.toIso8601String() : value);

  @override
  MapEntry<String, DateTime?> afterDecode(String key, value) =>
      MapEntry(key, value == null ? null : DateTime.parse(value));
}

class ListDateTimeHook extends FieldHook<List<DateTime>, List<String>> {
  const ListDateTimeHook();

  @override
  MapEntry<String, List<String>> beforeEncode(String key, value) =>
      MapEntry(key, value is List<DateTime> ? value.map((date) => date.toIso8601String()).toList() : value);

  @override
  MapEntry<String, List<DateTime>> afterDecode(String key, value) =>
      MapEntry(key, value is List<dynamic> ? value.map((date) => DateTime.parse(date.toString())).toList() : value);
}
