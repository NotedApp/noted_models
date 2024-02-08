// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'note_model.dart';

class NoteModelMapper extends ClassMapperBase<NoteModel> {
  NoteModelMapper._();

  static NoteModelMapper? _instance;
  static NoteModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteModelMapper._());
      NotedPluginMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NoteModel';

  static String _$id(NoteModel v) => v.id;
  static const Field<NoteModel, String> _f$id = Field('id', _$id);
  static NotedPlugin _$plugin(NoteModel v) => v.plugin;
  static const Field<NoteModel, NotedPlugin> _f$plugin =
      Field('plugin', _$plugin);
  static Map<String, dynamic> _$fields(NoteModel v) => v.fields;
  static const Field<NoteModel, Map<String, dynamic>> _f$fields =
      Field('fields', _$fields, opt: true, def: const {});

  @override
  final MappableFields<NoteModel> fields = const {
    #id: _f$id,
    #plugin: _f$plugin,
    #fields: _f$fields,
  };

  static NoteModel _instantiate(DecodingData data) {
    return NoteModel(
        id: data.dec(_f$id),
        plugin: data.dec(_f$plugin),
        fields: data.dec(_f$fields));
  }

  @override
  final Function instantiate = _instantiate;

  static NoteModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoteModel>(map);
  }

  static NoteModel fromJson(String json) {
    return ensureInitialized().decodeJson<NoteModel>(json);
  }
}

mixin NoteModelMappable {
  String toJson() {
    return NoteModelMapper.ensureInitialized()
        .encodeJson<NoteModel>(this as NoteModel);
  }

  Map<String, dynamic> toMap() {
    return NoteModelMapper.ensureInitialized()
        .encodeMap<NoteModel>(this as NoteModel);
  }

  NoteModelCopyWith<NoteModel, NoteModel, NoteModel> get copyWith =>
      _NoteModelCopyWithImpl(this as NoteModel, $identity, $identity);
  @override
  String toString() {
    return NoteModelMapper.ensureInitialized()
        .stringifyValue(this as NoteModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            NoteModelMapper.ensureInitialized()
                .isValueEqual(this as NoteModel, other));
  }

  @override
  int get hashCode {
    return NoteModelMapper.ensureInitialized().hashValue(this as NoteModel);
  }
}

extension NoteModelValueCopy<$R, $Out> on ObjectCopyWith<$R, NoteModel, $Out> {
  NoteModelCopyWith<$R, NoteModel, $Out> get $asNoteModel =>
      $base.as((v, t, t2) => _NoteModelCopyWithImpl(v, t, t2));
}

abstract class NoteModelCopyWith<$R, $In extends NoteModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get fields;
  $R call({String? id, NotedPlugin? plugin, Map<String, dynamic>? fields});
  NoteModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NoteModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NoteModel, $Out>
    implements NoteModelCopyWith<$R, NoteModel, $Out> {
  _NoteModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NoteModel> $mapper =
      NoteModelMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get fields => MapCopyWith($value.fields,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(fields: v));
  @override
  $R call({String? id, NotedPlugin? plugin, Map<String, dynamic>? fields}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (plugin != null) #plugin: plugin,
        if (fields != null) #fields: fields
      }));
  @override
  NoteModel $make(CopyWithData data) => NoteModel(
      id: data.get(#id, or: $value.id),
      plugin: data.get(#plugin, or: $value.plugin),
      fields: data.get(#fields, or: $value.fields));

  @override
  NoteModelCopyWith<$R2, NoteModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NoteModelCopyWithImpl($value, $cast, t);
}
