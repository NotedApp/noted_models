// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'note_select_field.dart';

class NoteSelectFieldMapper extends SubClassMapperBase<NoteSelectField> {
  NoteSelectFieldMapper._();

  static NoteSelectFieldMapper? _instance;
  static NoteSelectFieldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteSelectFieldMapper._());
      NoteFieldMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'NoteSelectField';

  static String _$id(NoteSelectField v) => v.id;
  static const Field<NoteSelectField, String> _f$id = Field('id', _$id);
  static String _$name(NoteSelectField v) => v.name;
  static const Field<NoteSelectField, String> _f$name = Field('name', _$name);
  static String _$value(NoteSelectField v) => v.value;
  static const Field<NoteSelectField, String> _f$value =
      Field('value', _$value, opt: true, def: '');
  static List<String> _$options(NoteSelectField v) => v.options;
  static const Field<NoteSelectField, List<String>> _f$options =
      Field('options', _$options, opt: true, def: const []);

  @override
  final MappableFields<NoteSelectField> fields = const {
    #id: _f$id,
    #name: _f$name,
    #value: _f$value,
    #options: _f$options,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'select';
  @override
  late final ClassMapperBase superMapper = NoteFieldMapper.ensureInitialized();

  @override
  DecodingContext inherit(DecodingContext context) {
    return context.inherit(args: () => []);
  }

  static NoteSelectField _instantiate(DecodingData data) {
    return NoteSelectField(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        value: data.dec(_f$value),
        options: data.dec(_f$options));
  }

  @override
  final Function instantiate = _instantiate;

  static NoteSelectField fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoteSelectField>(map);
  }

  static NoteSelectField fromJson(String json) {
    return ensureInitialized().decodeJson<NoteSelectField>(json);
  }
}

mixin NoteSelectFieldMappable {
  String toJson() {
    return NoteSelectFieldMapper.ensureInitialized()
        .encodeJson<NoteSelectField>(this as NoteSelectField);
  }

  Map<String, dynamic> toMap() {
    return NoteSelectFieldMapper.ensureInitialized()
        .encodeMap<NoteSelectField>(this as NoteSelectField);
  }

  NoteSelectFieldCopyWith<NoteSelectField, NoteSelectField, NoteSelectField>
      get copyWith => _NoteSelectFieldCopyWithImpl(
          this as NoteSelectField, $identity, $identity);
  @override
  String toString() {
    return NoteSelectFieldMapper.ensureInitialized()
        .stringifyValue(this as NoteSelectField);
  }

  @override
  bool operator ==(Object other) {
    return NoteSelectFieldMapper.ensureInitialized()
        .equalsValue(this as NoteSelectField, other);
  }

  @override
  int get hashCode {
    return NoteSelectFieldMapper.ensureInitialized()
        .hashValue(this as NoteSelectField);
  }
}

extension NoteSelectFieldValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NoteSelectField, $Out> {
  NoteSelectFieldCopyWith<$R, NoteSelectField, $Out> get $asNoteSelectField =>
      $base.as((v, t, t2) => _NoteSelectFieldCopyWithImpl(v, t, t2));
}

abstract class NoteSelectFieldCopyWith<$R, $In extends NoteSelectField, $Out>
    implements NoteFieldCopyWith<$R, $In, $Out, String> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get options;
  @override
  $R call({String? id, String? name, String? value, List<String>? options});
  NoteSelectFieldCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NoteSelectFieldCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NoteSelectField, $Out>
    implements NoteSelectFieldCopyWith<$R, NoteSelectField, $Out> {
  _NoteSelectFieldCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NoteSelectField> $mapper =
      NoteSelectFieldMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get options =>
      ListCopyWith($value.options, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(options: v));
  @override
  $R call({String? id, String? name, String? value, List<String>? options}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (value != null) #value: value,
        if (options != null) #options: options
      }));
  @override
  NoteSelectField $make(CopyWithData data) => NoteSelectField(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      value: data.get(#value, or: $value.value),
      options: data.get(#options, or: $value.options));

  @override
  NoteSelectFieldCopyWith<$R2, NoteSelectField, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NoteSelectFieldCopyWithImpl($value, $cast, t);
}
