import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'note_model.mapper.dart';

@MappableClass()
final class NoteModel with NoteModelMappable {
  final String id;
  final NotedPlugin plugin;
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
  }) : this._(
          plugin: plugin,
          fields: plugin.fields(),
          overrides: overrides,
        );

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

extension NotedPluginFields on NotedPlugin {
  List<NoteField> fields() {
    return switch (this) {
      NotedPlugin.notebook => _notebookFields,
      NotedPlugin.cookbook => _cookbookFields,
      NotedPlugin.climbing => _climbingFields,
    };
  }
}

const _notebookFields = <NoteField>[
  NoteField.title,
  NoteField.tagIds,
  NoteField.hidden,
  NoteField.archived,
  NoteField.lastUpdatedUtc,
  NoteField.document,
];

const _cookbookFields = <NoteField>[
  NoteField.title,
  NoteField.tagIds,
  NoteField.hidden,
  NoteField.archived,
  NoteField.lastUpdatedUtc,
  NoteField.link,
  NoteField.imageUrl,
  NoteField.document,
  NoteField.cookbookPrepTime,
  NoteField.cookbookCookTime,
  NoteField.cookbookDifficulty,
];

const _climbingFields = <NoteField>[
  NoteField.title,
  NoteField.tagIds,
  NoteField.hidden,
  NoteField.archived,
  NoteField.lastUpdatedUtc,
  NoteField.imageUrl,
  NoteField.location,
  NoteField.document,
  NoteField.climbingRating,
  NoteField.climbingSetting,
  NoteField.climbingType,
  NoteField.climbingAttemptsUtc,
  NoteField.climbingTopsUtc,
];
