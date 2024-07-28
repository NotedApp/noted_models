// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'note_text_field.dart';

class NoteTextFieldTypeMapper extends EnumMapper<NoteTextFieldType> {
  NoteTextFieldTypeMapper._();

  static NoteTextFieldTypeMapper? _instance;
  static NoteTextFieldTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteTextFieldTypeMapper._());
    }
    return _instance!;
  }

  static NoteTextFieldType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  NoteTextFieldType decode(dynamic value) {
    switch (value) {
      case 'normal':
        return NoteTextFieldType.normal;
      case 'title':
        return NoteTextFieldType.title;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(NoteTextFieldType self) {
    switch (self) {
      case NoteTextFieldType.normal:
        return 'normal';
      case NoteTextFieldType.title:
        return 'title';
    }
  }
}

extension NoteTextFieldTypeMapperExtension on NoteTextFieldType {
  String toValue() {
    NoteTextFieldTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<NoteTextFieldType>(this) as String;
  }
}

class NoteTextFieldMapper extends SubClassMapperBase<NoteTextField> {
  NoteTextFieldMapper._();

  static NoteTextFieldMapper? _instance;
  static NoteTextFieldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteTextFieldMapper._());
      NoteFieldMapper.ensureInitialized().addSubMapper(_instance!);
      NoteTextFieldTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NoteTextField';

  static String _$id(NoteTextField v) => v.id;
  static const Field<NoteTextField, String> _f$id = Field('id', _$id);
  static String _$name(NoteTextField v) => v.name;
  static const Field<NoteTextField, String> _f$name = Field('name', _$name);
  static String _$value(NoteTextField v) => v.value;
  static const Field<NoteTextField, String> _f$value =
      Field('value', _$value, opt: true, def: '');
  static NoteTextFieldType _$type(NoteTextField v) => v.type;
  static const Field<NoteTextField, NoteTextFieldType> _f$type =
      Field('type', _$type, opt: true, def: NoteTextFieldType.normal);

  @override
  final MappableFields<NoteTextField> fields = const {
    #id: _f$id,
    #name: _f$name,
    #value: _f$value,
    #type: _f$type,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'text';
  @override
  late final ClassMapperBase superMapper = NoteFieldMapper.ensureInitialized();

  @override
  DecodingContext inherit(DecodingContext context) {
    return context.inherit(args: () => []);
  }

  static NoteTextField _instantiate(DecodingData data) {
    return NoteTextField(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        value: data.dec(_f$value),
        type: data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static NoteTextField fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoteTextField>(map);
  }

  static NoteTextField fromJson(String json) {
    return ensureInitialized().decodeJson<NoteTextField>(json);
  }
}

mixin NoteTextFieldMappable {
  String toJson() {
    return NoteTextFieldMapper.ensureInitialized()
        .encodeJson<NoteTextField>(this as NoteTextField);
  }

  Map<String, dynamic> toMap() {
    return NoteTextFieldMapper.ensureInitialized()
        .encodeMap<NoteTextField>(this as NoteTextField);
  }

  NoteTextFieldCopyWith<NoteTextField, NoteTextField, NoteTextField>
      get copyWith => _NoteTextFieldCopyWithImpl(
          this as NoteTextField, $identity, $identity);
  @override
  String toString() {
    return NoteTextFieldMapper.ensureInitialized()
        .stringifyValue(this as NoteTextField);
  }

  @override
  bool operator ==(Object other) {
    return NoteTextFieldMapper.ensureInitialized()
        .equalsValue(this as NoteTextField, other);
  }

  @override
  int get hashCode {
    return NoteTextFieldMapper.ensureInitialized()
        .hashValue(this as NoteTextField);
  }
}

extension NoteTextFieldValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NoteTextField, $Out> {
  NoteTextFieldCopyWith<$R, NoteTextField, $Out> get $asNoteTextField =>
      $base.as((v, t, t2) => _NoteTextFieldCopyWithImpl(v, t, t2));
}

abstract class NoteTextFieldCopyWith<$R, $In extends NoteTextField, $Out>
    implements NoteFieldCopyWith<$R, $In, $Out, String> {
  @override
  $R call({String? id, String? name, String? value, NoteTextFieldType? type});
  NoteTextFieldCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NoteTextFieldCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NoteTextField, $Out>
    implements NoteTextFieldCopyWith<$R, NoteTextField, $Out> {
  _NoteTextFieldCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NoteTextField> $mapper =
      NoteTextFieldMapper.ensureInitialized();
  @override
  $R call({String? id, String? name, String? value, NoteTextFieldType? type}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (value != null) #value: value,
        if (type != null) #type: type
      }));
  @override
  NoteTextField $make(CopyWithData data) => NoteTextField(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      value: data.get(#value, or: $value.value),
      type: data.get(#type, or: $value.type));

  @override
  NoteTextFieldCopyWith<$R2, NoteTextField, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NoteTextFieldCopyWithImpl($value, $cast, t);
}
