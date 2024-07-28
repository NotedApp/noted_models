// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'note_toggle_field.dart';

class NoteToggleFieldMapper extends SubClassMapperBase<NoteToggleField> {
  NoteToggleFieldMapper._();

  static NoteToggleFieldMapper? _instance;
  static NoteToggleFieldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteToggleFieldMapper._());
      NoteFieldMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'NoteToggleField';

  static String _$id(NoteToggleField v) => v.id;
  static const Field<NoteToggleField, String> _f$id = Field('id', _$id);
  static String _$name(NoteToggleField v) => v.name;
  static const Field<NoteToggleField, String> _f$name = Field('name', _$name);
  static bool _$value(NoteToggleField v) => v.value;
  static const Field<NoteToggleField, bool> _f$value =
      Field('value', _$value, opt: true, def: false);

  @override
  final MappableFields<NoteToggleField> fields = const {
    #id: _f$id,
    #name: _f$name,
    #value: _f$value,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'toggle';
  @override
  late final ClassMapperBase superMapper = NoteFieldMapper.ensureInitialized();

  @override
  DecodingContext inherit(DecodingContext context) {
    return context.inherit(args: () => []);
  }

  static NoteToggleField _instantiate(DecodingData data) {
    return NoteToggleField(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        value: data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static NoteToggleField fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoteToggleField>(map);
  }

  static NoteToggleField fromJson(String json) {
    return ensureInitialized().decodeJson<NoteToggleField>(json);
  }
}

mixin NoteToggleFieldMappable {
  String toJson() {
    return NoteToggleFieldMapper.ensureInitialized()
        .encodeJson<NoteToggleField>(this as NoteToggleField);
  }

  Map<String, dynamic> toMap() {
    return NoteToggleFieldMapper.ensureInitialized()
        .encodeMap<NoteToggleField>(this as NoteToggleField);
  }

  NoteToggleFieldCopyWith<NoteToggleField, NoteToggleField, NoteToggleField>
      get copyWith => _NoteToggleFieldCopyWithImpl(
          this as NoteToggleField, $identity, $identity);
  @override
  String toString() {
    return NoteToggleFieldMapper.ensureInitialized()
        .stringifyValue(this as NoteToggleField);
  }

  @override
  bool operator ==(Object other) {
    return NoteToggleFieldMapper.ensureInitialized()
        .equalsValue(this as NoteToggleField, other);
  }

  @override
  int get hashCode {
    return NoteToggleFieldMapper.ensureInitialized()
        .hashValue(this as NoteToggleField);
  }
}

extension NoteToggleFieldValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NoteToggleField, $Out> {
  NoteToggleFieldCopyWith<$R, NoteToggleField, $Out> get $asNoteToggleField =>
      $base.as((v, t, t2) => _NoteToggleFieldCopyWithImpl(v, t, t2));
}

abstract class NoteToggleFieldCopyWith<$R, $In extends NoteToggleField, $Out>
    implements NoteFieldCopyWith<$R, $In, $Out, bool> {
  @override
  $R call({String? id, String? name, bool? value});
  NoteToggleFieldCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NoteToggleFieldCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NoteToggleField, $Out>
    implements NoteToggleFieldCopyWith<$R, NoteToggleField, $Out> {
  _NoteToggleFieldCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NoteToggleField> $mapper =
      NoteToggleFieldMapper.ensureInitialized();
  @override
  $R call({String? id, String? name, bool? value}) => $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (value != null) #value: value
      }));
  @override
  NoteToggleField $make(CopyWithData data) => NoteToggleField(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      value: data.get(#value, or: $value.value));

  @override
  NoteToggleFieldCopyWith<$R2, NoteToggleField, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NoteToggleFieldCopyWithImpl($value, $cast, t);
}
